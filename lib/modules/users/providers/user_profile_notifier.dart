import 'package:apparence_kit/core/data/repositories/device_repository.dart';
import 'package:apparence_kit/core/data/repositories/notifications_repository.dart';
import 'package:apparence_kit/core/data/repositories/subscription_repository.dart';
import 'package:apparence_kit/core/data/repositories/user_infos_repository.dart';
import 'package:apparence_kit/core/data/repositories/user_repository.dart';
import 'package:apparence_kit/core/widgets/toast.dart';
import 'package:apparence_kit/modules/users/models/user_profile.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_notifier.g.dart';

@Riverpod(keepAlive: false)
class UserProfileNotifier extends _$UserProfileNotifier {
  @override
  Future<UserProfile> build(String userId) async {
    debugPrint("Loading user profile for user $userId");
    await Future.delayed(const Duration(seconds: 1));
    final user = await ref.read(userRepositoryProvider).get(userId);
    if(user == null) {
      throw Exception("User not found");
    }
    final userOnboardingData = await ref.read(userInfosRepositoryProvider).getAll(userId);
    final userSubscription = await ref.read(subscriptionRepositoryProvider).get(userId);
    final latestNotifications = await ref.read(notificationRepositoryProvider).get(userId, pageSize: 25);
    final devices = await ref.read(deviceRepositoryProvider).getFromUser(userId);

    return UserProfile(
      user: user,
      userOnboardingData: userOnboardingData,
      subscription: userSubscription,
      notifications: latestNotifications,
      devices: devices,
    );
  }

  Future<void> sendNotification({
    required String title,
    required String body,
    required String? url,
  }) async {
    try {
      final newNotif = await ref.read(notificationRepositoryProvider).create(
        userId,
        title: title,
        body: body,
        url: url,
      );
      state = AsyncData(state.value!.copyWith(notifications: [newNotif, ...state.value!.notifications]));
      ref.read(toastProvider).success(title: "Notification sent", text: "The user will receive the notification shortly on devices");
    } catch (e, stacktrace) {
      debugPrint("Failed to send notification: $e - $stacktrace");
      ref.read(toastProvider).error(title: "Failed to send notification", text: "An error occurred while sending the notification");
    }
  }

  Future<void> giftSubscription({
    required DateTime periodEndDate,
  }) async {
    try {
      final subscription = await ref.read(subscriptionRepositoryProvider).create(userId, "gift", periodEndDate);
      state = AsyncData(state.value!.copyWith(subscription: subscription));
      ref.read(toastProvider).success(
        title: "Subscription gifted", 
        text: "The user will now benefit from the subscription until ${subscription.periodEndDate}");
    } catch (err) {
      debugPrint("Failed to gift subscription: $err");
      ref.read(toastProvider).error(title: "Failed to gift subscription", text: "An error occurred while gifting the subscription");
    }
  }

}