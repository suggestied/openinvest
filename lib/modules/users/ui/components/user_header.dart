import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/user_avatar.dart';

import 'package:apparence_kit/modules/users/models/user_profile.dart';
import 'package:apparence_kit/modules/users/providers/user_profile_notifier.dart';
import 'package:apparence_kit/modules/users/ui/components/new_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserHeaderComponent extends ConsumerWidget {
  final UserProfile userProfileState;

  const UserHeaderComponent({super.key, required this.userProfileState});

  UserProfileNotifier getNotifier(WidgetRef ref) => ref.read(
      userProfileNotifierProvider(userProfileState.user.idOrThrow).notifier);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final avatarPath = userProfileState.user.map(
      authenticated: (data) => data.avatarPath,
      anonymous: (data) => null,
      loading: (_) => null,
    );
    return SelectionArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          UserAvatar.fromUrl(url: avatarPath ?? '', radius: 65, iconSize: 64),
          const SizedBox(width: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                userProfileState.user.map(
                  authenticated: (data) => data.name ?? 'Name not set',
                  anonymous: (data) => data.name ?? 'Anonymous',
                  loading: (_) => 'Loading...',
                ),
                style: context.textTheme.headlineLarge,
              ),
              const SizedBox(height: 12),
              Text(
                userProfileState.user.map(
                  authenticated: (data) => data.id!,
                  anonymous: (data) => data.id!,
                  loading: (_) => 'Loading...',
                ),
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colors.onBackground.withOpacityCpy(.6),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                userProfileState.user.map(
                  authenticated: (data) => data.email,
                  anonymous: (data) => 'No email provided',
                  loading: (_) => 'Loading...',
                ),
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colors.onBackground.withOpacityCpy(.6),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => showNewNotificationDialog(
              context,
              onCreateNotification: ({
                required String title,
                required String body,
                String? url,
              }) async => getNotifier(ref).sendNotification(
                title: title,
                body: body,
                url: url,
              ),
            ),
            child: Text('Send notification'),
          ),
        ],
      ),
    );
  }
}
