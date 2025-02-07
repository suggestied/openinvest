import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/breadcrumb.dart';
import 'package:apparence_kit/core/widgets/responsive_layout.dart';
import 'package:apparence_kit/modules/users/providers/user_profile_notifier.dart';
import 'package:apparence_kit/modules/users/ui/components/user_header.dart';
import 'package:apparence_kit/modules/users/ui/components/user_informations.dart';
import 'package:apparence_kit/modules/users/ui/components/user_notifications.dart';
import 'package:apparence_kit/modules/users/ui/components/user_onboarding_data.dart';
import 'package:apparence_kit/modules/users/ui/components/user_subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserProfilePage extends ConsumerStatefulWidget {
  final String userId;

  const UserProfilePage({super.key, required this.userId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserProfilePageState();
}

class _UserProfilePageState extends ConsumerState<UserProfilePage> {

  UserProfileNotifier get notifier => ref.read(userProfileNotifierProvider(widget.userId).notifier);

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userProfileNotifierProvider(widget.userId));

    return ColoredBox(
      color: context.colors.background,
      child: LargeLayoutContainer(
        maxWidth: 1200,
        child: state.map(
          data: (data) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 72),
                  Breadcrumb(paths: ['Users', data.value.user.idOrThrow]),
                  const SizedBox(height: 32),
                  UserHeaderComponent(userProfileState: data.value),
                  const SizedBox(height: 48),
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: UserInformationsCard(
                            userProfileState: data.value,
                          ),
                        ),
                        const SizedBox(width: 24),
                        Expanded(
                          child: UserOnboardingData(
                            userProfileState: data.value,
                          ),
                        ),
                        const SizedBox(width: 24),
                        Expanded(
                          child: UserSubscriptionCard(
                            userProfileState: data.value,
                            onGiftSubscription: (endDate) => notifier.giftSubscription(periodEndDate: endDate),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  UserNotificationsCard(
                    userProfileState: data.value,
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            );
          },
          error: (error) {
            debugPrint(
              "Error loading user profile: ${error.error} : ${error.stackTrace}",
            );
            return const Center(
              child: Text("Error loading user profile"),
            );
          },
          loading: (_) => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
