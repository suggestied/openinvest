import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class UnreadNotificationBadge extends StatelessWidget {
  const UnreadNotificationBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      decoration: BoxDecoration(
        color: context.colors.grey3,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.colors.background,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Text(
        "Not read",
        textAlign: TextAlign.center, 
        style: context.textTheme.bodyMedium?.copyWith(
          fontSize: 10,
          color: context.colors.background,
        ),
      ),
    );
  }
}

class RedNotificationBadge extends StatelessWidget {
  const RedNotificationBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.colors.background,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Text(
        "Seen", 
        textAlign: TextAlign.center,
        style: context.textTheme.bodyMedium?.copyWith(
          fontSize: 10,
          color: context.colors.onBackground,
        ),
      ),
    );
  }
}