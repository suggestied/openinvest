// ignore_for_file: invalid_annotation_target, constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_entity.freezed.dart';
part 'subscription_entity.g.dart';

enum SubscriptionStatus {
  ACTIVE,
  PAUSED,
  EXPIRED,
  LIFETIME,
  CANCELLED,
}

enum SubscriptionStore {
  PLAY_STORE,
  APPLE_STORE,
}

@freezed
sealed class SubscriptionEntity with _$SubscriptionEntity {
  const factory SubscriptionEntity({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'sku_id') required String skuId,
    @JsonKey(name: 'creation_date') DateTime? creationDate,
    @JsonKey(name: 'last_update_date') DateTime? lastUpdateDate,
    @JsonKey(name: 'period_end_date') DateTime? periodEndDate,
    @JsonKey(name: 'status') required SubscriptionStatus status,
    @JsonKey(name: 'store') required SubscriptionStore store,
  }) = SubscriptionEntityData;

  factory SubscriptionEntity.fromJson(Map<String, Object?> json) =>
      _$SubscriptionEntityFromJson(json);
}
