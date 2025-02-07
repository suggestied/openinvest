import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/custom_card.dart';
import 'package:apparence_kit/modules/users/models/user_profile.dart';
import 'package:apparence_kit/modules/users/ui/widgets/notifications_status_widget.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:intl/intl.dart';

class UserNotificationsCard extends StatelessWidget {
  final UserProfile userProfileState;

  const UserNotificationsCard({super.key, required this.userProfileState});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(HugeIcons.strokeRoundedNotification01, size: 16, color: context.colors.onSurface.withOpacityCpy(.6)),
              const SizedBox(width: 8),
              Text("User notifications",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.colors.onSurface.withOpacityCpy(.6),
                  )),
            ],
          ),
          const SizedBox(height: 12),
          if(userProfileState.notifications.isEmpty)
            SizedBox(
                height: 100,
                child: Center(
                  child: Text(
                    "No notifications found",
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: context.colors.onSurface.withOpacityCpy(.6),
                    ),
                  ),
                ),
              ),
          if(userProfileState.notifications.isNotEmpty)
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Divider(
                color: Color(0xFFF2F2F2),
                height: 1,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: userProfileState.notifications.length,
              itemBuilder: (context, index) {
                final notification = userProfileState.notifications[index];
                return ListTile(
                  title: Text(notification.title),
                  subtitle: Text(notification.body),
                  contentPadding: EdgeInsets.symmetric(vertical: 2),
                  trailing: Text(
                    DateFormat.yMMMd().format(notification.createdAt),
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: context.colors.onSurface.withOpacityCpy(.6),
                    ),
                  ),
                  leading: switch(notification.seen) {
                    false => UnreadNotificationBadge(),
                    true => RedNotificationBadge(),
                  }
                );
              },
            ),
        ],
      ),
    );
  }
}

