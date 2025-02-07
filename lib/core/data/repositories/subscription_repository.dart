import 'package:apparence_kit/core/data/api/subscription_api.dart';
import 'package:apparence_kit/core/data/entities/subscription_entity.dart';
import 'package:apparence_kit/core/data/models/subscription.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final subscriptionRepositoryProvider = Provider(
  (ref) => SubscriptionRepository(
    subscriptionApi: ref.watch(subscriptionApiProvider),
    // remoteConfig: ref.watch(remoteConfigApiProvider),
  ),
);


/// This class is responsible for managing the subscription of the user
/// It will be used to know if the user is subscribed or not and to get the subscription
/// A fake implementation of the revenue cat is used for units test see: [InAppSubscriptionApiFake]
class SubscriptionRepository  {
  final SubscriptionApi _subscriptionApi;

  /// You can use the remote config to configure the subscription module
  /// For example, you can set the number of hours between two requests to the API
  // final RemoteConfigApi? _remoteConfig;

  SubscriptionRepository({
    required SubscriptionApi subscriptionApi,
  })  : _subscriptionApi = subscriptionApi;

  Future<Subscription?> get(String userId) async {
    final entity = await _subscriptionApi.get(userId);
    if(entity == null) {
      return null;
    }
    return Subscription.fromEntity(entity);
  }

  /// Create a subscription for the user
  /// The subscription will be created in the backend
  /// As this is a gift the subscription will remain active until the period end date but nothing will be charged
  /// Also the status will remain active as REVENUECAT won't call our serice to change the status 
  /// **So you have to check both status and period end date to know if the subscription is still active in your app**
  Future<Subscription> create(String userId, String skuId, DateTime periodEndDate) async {
    final entity = SubscriptionEntity(
      skuId: skuId, 
      status: SubscriptionStatus.ACTIVE, 
      store: SubscriptionStore.APPLE_STORE,
      creationDate: DateTime.now(),
      lastUpdateDate: DateTime.now(),
      periodEndDate: periodEndDate,
      userId: userId,
    );
    await _subscriptionApi.create(entity);
    return Subscription.fromEntity(entity);
  }
}
