import 'package:apparence_kit/core/data/api/base_api_exceptions.dart';
import 'package:apparence_kit/core/data/entities/notifications_entity.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final notificationsApiProvider = Provider<NotificationsApi>(
  (ref) => FirebaseNotificationsApi(
    logger: Logger(),
    client: Supabase.instance.client,
  ),
);

/// This class is responsible for listening from firebase notifications
/// As I like repositories to not depend on external libraries
/// I wrapped some of the firebase messaging methods
///
/// You could use directly the firebase messaging methods but making a fake implementation
/// of this class would be harder.
abstract class NotificationsApi {

  // Used to get the past notifications from the server
  Future<List<NotificationEntity>> get(
    String userId, {
    DateTime? startDate,
    required int limit,
    int page = 0,
  });

  // Used to mark a notification as read
  Future<void> read(String userId, String notificationId);

  // Used to create a new notification
  Future<void> create(String userId, NotificationEntity entity);

  // Used to get the unread notifications count
  Stream<int> unreadNotifications(String userId);
}

typedef OnRemoteMessage = Future<void> Function(RemoteMessage message);

class FirebaseNotificationsApi implements NotificationsApi {
  final SupabaseClient _client;
  // ignore: unused_field
  final Logger _logger;

  FirebaseNotificationsApi({
    required SupabaseClient client,
    required Logger logger,
  })  :  _client = client,
        _logger = logger;

  // Used to get the past notifications from the server
  @override
  Future<List<NotificationEntity>> get(
    String userId, {
    DateTime? startDate,
    required int limit,
    int page = 0,
  }) async {
    try {
      final response = await _client
          .from('notifications')
          .select()
          .eq('user_id', userId)
          .order('creation_date', ascending: false)
          .range(page * limit, (page + 1) * limit - 1);
      if (response.isEmpty) {
        return [];
      }
      return response
          .map((e) => NotificationEntity.fromJson(e)) //
          .toList();
    } catch (e, stacktrace) {
      throw ApiError(
        code: 0,
        message: '$e: $stacktrace',
      );
    }
  }

  @override
  Future<void> read(String userId, String notificationId) async {
    try {
      await _client
          .from('notifications')
          .update({'read_date': DateTime.now().toString()})
          .eq('user_id', userId)
          .eq('id', notificationId);
    } catch (e, stacktrace) {
      throw ApiError(
        code: 0,
        message: '$e: $stacktrace',
      );
    }
  }

  @override
  Stream<int> unreadNotifications(String userId) {
    try {
      return _client
          .from('notifications')
          .stream(primaryKey: ['id'])
          .eq('user_id', userId)
          .limit(10)
          .map((event) => event.length);
    } catch (e, stacktrace) {
      debugPrint('$e: $stacktrace');
      throw ApiError(
        code: 0,
        message: '$e: $stacktrace',
      );
    }
  }
  
  @override
  Future<void> create(String userId, NotificationEntity entity) {
    try {
      return _client
          .from('notifications')
          .insert(entity.toJson()..remove('id'));
    } catch (e, stacktrace) {
      throw ApiError(
        code: 0,
        message: '$e: $stacktrace',
      );
    }
  }
}
