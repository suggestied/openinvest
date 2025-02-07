import 'dart:async';

import 'package:apparence_kit/core/data/api/base_api_exceptions.dart';
import 'package:apparence_kit/core/data/entities/device_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

typedef OnTokenRefresh = void Function(String token);

final deviceApiProvider = Provider<DeviceApi>(
  (ref) => DeviceApi(
    client: Supabase.instance.client,
  ),
);

class DeviceApi {
  final SupabaseClient _client;

  DeviceApi({
    required SupabaseClient client,
  }) : _client = client;

  Future<List<DeviceEntity>> getFromUser(String userId) async {
    try {
      final res = await _client
          .from('devices') //
          .select()
          .eq('user_id', userId);
      if (res.isEmpty) {
        return [];
      }
      return res.map((e) => DeviceEntity.fromJson(e)).toList();
    } catch (e, stacktrace) {
      throw ApiError(
        code: 0,
        message: '$e: $stacktrace',
      );
    }
  }
}
