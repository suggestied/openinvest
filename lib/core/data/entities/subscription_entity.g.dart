// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionEntityDataImpl _$$SubscriptionEntityDataImplFromJson(Map json) =>
    _$SubscriptionEntityDataImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      skuId: json['sku_id'] as String,
      creationDate: json['creation_date'] == null
          ? null
          : DateTime.parse(json['creation_date'] as String),
      lastUpdateDate: json['last_update_date'] == null
          ? null
          : DateTime.parse(json['last_update_date'] as String),
      periodEndDate: json['period_end_date'] == null
          ? null
          : DateTime.parse(json['period_end_date'] as String),
      status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
      store: $enumDecode(_$SubscriptionStoreEnumMap, json['store']),
    );

Map<String, dynamic> _$$SubscriptionEntityDataImplToJson(
        _$SubscriptionEntityDataImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'user_id': instance.userId,
      'sku_id': instance.skuId,
      'creation_date': instance.creationDate?.toIso8601String(),
      'last_update_date': instance.lastUpdateDate?.toIso8601String(),
      'period_end_date': instance.periodEndDate?.toIso8601String(),
      'status': _$SubscriptionStatusEnumMap[instance.status]!,
      'store': _$SubscriptionStoreEnumMap[instance.store]!,
    };

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.ACTIVE: 'ACTIVE',
  SubscriptionStatus.PAUSED: 'PAUSED',
  SubscriptionStatus.EXPIRED: 'EXPIRED',
  SubscriptionStatus.LIFETIME: 'LIFETIME',
  SubscriptionStatus.CANCELLED: 'CANCELLED',
};

const _$SubscriptionStoreEnumMap = {
  SubscriptionStore.PLAY_STORE: 'PLAY_STORE',
  SubscriptionStore.APPLE_STORE: 'APPLE_STORE',
};
