import 'package:apparence_kit/core/data/api/device_api.dart';
import 'package:apparence_kit/core/data/models/device.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deviceRepositoryProvider = Provider<DeviceRepository>(
  (ref) {
    return DeviceRepository(
      deviceApi: ref.watch(deviceApiProvider),
    );
  },
);

class DeviceRepository {
  final DeviceApi _deviceApi;

  DeviceRepository({
    required DeviceApi deviceApi,
  }) : _deviceApi = deviceApi;

  Future<List<Device>> getFromUser(String userId) async {
    final entities = await _deviceApi.getFromUser(userId);
    return entities.map((e) => Device.fromEntity(e)).toList();
  }
}