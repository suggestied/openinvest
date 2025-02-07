// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityDataImpl _$$UserEntityDataImplFromJson(Map json) =>
    _$UserEntityDataImpl(
      id: json['id'] as String?,
      creationDate: json['creation_date'] == null
          ? null
          : DateTime.parse(json['creation_date'] as String),
      lastUpdateDate: json['last_update_date'] == null
          ? null
          : DateTime.parse(json['last_update_date'] as String),
      email: json['email'] as String?,
      name: json['name'] as String?,
      avatarPath: json['avatar_url'] as String?,
      onboarded: json['onboarded'] as bool?,
    );

Map<String, dynamic> _$$UserEntityDataImplToJson(
        _$UserEntityDataImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'creation_date': instance.creationDate?.toIso8601String(),
      'last_update_date': instance.lastUpdateDate?.toIso8601String(),
      'email': instance.email,
      'name': instance.name,
      'avatar_url': instance.avatarPath,
      'onboarded': instance.onboarded,
    };
