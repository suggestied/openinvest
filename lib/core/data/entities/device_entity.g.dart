// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceEntityDataImpl _$$DeviceEntityDataImplFromJson(Map json) =>
    _$DeviceEntityDataImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      creationDate: DateTime.parse(json['creation_date'] as String),
      lastUpdateDate: DateTime.parse(json['last_update_date'] as String),
      installationId: json['installation_id'] as String,
      token: json['token'] as String,
      operatingSystem:
          $enumDecode(_$OperatingSystemEnumMap, json['operatingSystem']),
    );

Map<String, dynamic> _$$DeviceEntityDataImplToJson(
        _$DeviceEntityDataImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'user_id': instance.userId,
      'creation_date': instance.creationDate.toIso8601String(),
      'last_update_date': instance.lastUpdateDate.toIso8601String(),
      'installation_id': instance.installationId,
      'token': instance.token,
      'operatingSystem': _$OperatingSystemEnumMap[instance.operatingSystem]!,
    };

const _$OperatingSystemEnumMap = {
  OperatingSystem.ios: 'ios',
  OperatingSystem.android: 'android',
};
