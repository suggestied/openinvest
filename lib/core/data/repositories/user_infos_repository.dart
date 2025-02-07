import 'package:apparence_kit/core/data/api/user_infos_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userInfosRepositoryProvider = Provider<UserInfosRepository>(
  (ref) => UserInfosRepository(
    userInfosApi: ref.read(userInfosApiProvider),
  ),
);

class UserInfosRepository {
  final UserInfosApi _userInfosApi;

  UserInfosRepository({
    required UserInfosApi userInfosApi,
  }) : _userInfosApi = userInfosApi;

  Future<Map<String,String>> getAll(String userId) async {
    final entities = await _userInfosApi.getAll(userId);
    final Map<String,String> result = {};
    for (final element in entities) {
      result[element.key] = element.value;
    }
    return result;
  }
  
}
