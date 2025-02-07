// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoEntityDataImpl _$$UserInfoEntityDataImplFromJson(Map json) =>
    _$UserInfoEntityDataImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String,
      key: json['info_key'] as String,
      value: json['info_value'] as String,
    );

Map<String, dynamic> _$$UserInfoEntityDataImplToJson(
        _$UserInfoEntityDataImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'user_id': instance.userId,
      'info_key': instance.key,
      'info_value': instance.value,
    };
