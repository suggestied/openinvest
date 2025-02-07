import 'package:apparence_kit/core/data/entities/subscription_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';

/// This model is empty because it's a placeholder for the actual model
/// that will be generated if you use the Subscription module
@freezed
class Subscription with _$Subscription {
  
  const factory Subscription({
    String? skuId,
    DateTime? creationDate,
    DateTime? lastUpdateDate,
    DateTime? periodEndDate,
    required SubscriptionStatus status,
    required SubscriptionStore store,
  }) = SubscriptionStateData;

  const Subscription._();

  factory Subscription.fromEntity(
    SubscriptionEntity entity,
  ) {
    return Subscription(
      skuId: entity.skuId,
      creationDate: entity.creationDate,
      lastUpdateDate: entity.lastUpdateDate,
      periodEndDate: entity.periodEndDate,
      status: entity.status,
      store: entity.store,
    );
    }
  }