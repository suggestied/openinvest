import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  final String label;
  final String title;
  final String subtitle;

  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onTap;


  const LargeCard({
    super.key,
    required this.label,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Ink(
          height: 148,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: backgroundColor,
            border: Border.all(
              color: context.colors.onBackground.withOpacityCpy(.1),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label, 
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: textColor,
                )
              ),
              const Spacer(),
              Text(
                title, 
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.headlineMedium?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w900,
                  height: 0.9,
                )
              ),
              const Spacer(),
              Text(
                subtitle, 
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: textColor.withOpacityCpy(.6),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}