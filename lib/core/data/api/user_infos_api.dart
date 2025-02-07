import 'package:apparence_kit/core/data/api/base_api_exceptions.dart';
import 'package:apparence_kit/core/data/entities/user_info_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final userInfosApiProvider = Provider(
  (ref) => UserInfosApi(
    client: Supabase.instance.client,
  ),
);

const _kUserInfosTable = 'user_infos';

class UserInfosApi {
  final SupabaseClient _client;
  final Logger _logger = Logger();

  UserInfosApi({
    required SupabaseClient client,
  }) : _client = client;

  Future<List<UserInfoEntity>> getAll(String userId) async {
    try {
      final res = await _client
          .from(_kUserInfosTable) //
          .select()
          .eq('user_id', userId);
      if (res.isEmpty) {
        return [];
      }
      return res
          .map((e) => UserInfoEntity.fromJson(e)) //
          .toList();
    } catch (e) {
      _logger.e(e);
      throw ApiError(
        code: 0,
        message: '$e',
      );
    }
  }

  Future<UserInfoEntity?> getByKey(String userId, String key) async {
    try {
      final res = await _client
          .from(_kUserInfosTable) //
          .select()
          .eq('user_id', userId)
          .eq('info_key', key);
      if (res.isEmpty) {
        return null;
      }
      return UserInfoEntity.fromJson(res.first);
    } catch (e) {
      _logger.e(e);
      throw ApiError(
        code: 0,
        message: '$e',
      );
    }
  }

  Future<void> create(String userId, UserInfoEntity info) async {
    try {
      await _client.from(_kUserInfosTable).insert(info.toJson());
    } catch (e) {
      _logger.e(e);
      throw ApiError(
        code: 0,
        message: '$e',
      );
    }
  }

  Future<void> update(String userId, UserInfoEntity info) async {
    try {
      await _client
          .from(_kUserInfosTable) //
          .update(info.toJson()..remove('id'))
          .eq('id', info.id!);
    } catch (e) {
      _logger.e(e);
      throw ApiError(
        code: 0,
        message: '$e',
      );
    }
  }
}
