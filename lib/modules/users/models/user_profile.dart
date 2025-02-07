import 'package:apparence_kit/core/data/models/device.dart';
import 'package:apparence_kit/core/data/models/notification.dart';
import 'package:apparence_kit/core/data/models/subscription.dart';
import 'package:apparence_kit/core/data/models/user.dart';

class UserProfile {
  final User user;
  final Map<String, String> userOnboardingData;
  final Subscription? subscription;
  final List<Notification> notifications;
  final List<Device> devices;

  UserProfile({
    required this.user,
    required this.userOnboardingData,
    required this.subscription,
    required this.notifications,
    required this.devices,
  });

  UserProfile copyWith({
    User? user,
    Map<String, String>? userOnboardingData,
    Subscription? subscription,
    List<Notification>? notifications,
    List<Device>? devices,
  }) {
    return UserProfile(
      user: user ?? this.user,
      userOnboardingData: userOnboardingData ?? this.userOnboardingData,
      subscription: subscription ?? this.subscription,
      notifications: notifications ?? this.notifications,
      devices: devices ?? this.devices,
    );
  }
}
