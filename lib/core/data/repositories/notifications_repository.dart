import 'package:apparence_kit/core/data/api/notifications_api.dart';
import 'package:apparence_kit/core/data/entities/notifications_entity.dart';
import 'package:apparence_kit/core/data/models/notification.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class NotificationsRepository {
  // this method is used to get the notifications from the server
  Future<List<Notification>> get(
    String userId, {
    int pageSize = 20,
    DateTime? startDate,
  });

  // mark a notification as read
  Future<Notification> read(String userId, Notification notification);

  // create a new notification on the user (will send a push notification too)
  Future<Notification> create(
    String userId, {
    required String title,
    required String body,
    required String? url,
  });

  // listen to the unread notifications count
  Stream<int> listenToUnreadNotificationsCount(String userId);
}

final notificationRepositoryProvider = Provider<NotificationsRepository>(
  (ref) => AppNotificationsRepository(
    notificationsApi: ref.watch(notificationsApiProvider),
  ),
);

class AppNotificationsRepository implements NotificationsRepository {
  final NotificationsApi _notificationsApi;

  AppNotificationsRepository({
    required NotificationsApi notificationsApi,
  })  : _notificationsApi = notificationsApi;
  
  @override
  Future<List<Notification>> get(
    String userId, {
    int pageSize = 20,
    DateTime? startDate,
  }) async {
    final notificationEntities = await _notificationsApi.get(
      userId,
      limit: pageSize,
      startDate: startDate,
    );
    final notifications = notificationEntities
        .map(
          (e) => Notification.withData(
            id: e.id,
            title: e.title,
            body: e.body,
            createdAt: e.creationDate,
            readAt: e.readDate,
            type: e.type,
            data: e.data,
          ),
        )
        .toList();
    return notifications;
  }

  @override
  Future<Notification> create(
    String userId, {
    required String title,
    required String body,
    required String? url,
  }) async {
    final Map<String, dynamic> data = {};
    if (url != null) {
      data['url'] = url;
    }
    final entity = NotificationEntity(
      userId: userId,
      title: title,
      body: body,
      creationDate: DateTime.now(),
      data: data, 
      type: switch(url) {
        null => NotificationTypes.OTHER,
        _ => NotificationTypes.LINK,
      },
    );
    await _notificationsApi.create(userId, entity);
    return Notification.fromEntity(entity);
  }

  @override
  Future<Notification> read(String userId, Notification notification) async {
    if (notification.id == null) {
      throw Exception('A notification without id cannot be read');
    }
    await _notificationsApi.read(userId, notification.id!);
    return notification.copyWith(readAt: DateTime.now());
  }

  @override
  Stream<int> listenToUnreadNotificationsCount(String userId) {
    return _notificationsApi.unreadNotifications(userId);
  }
}
