import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final Widget child;
  final String? title;
  final IconData? icon;
  final double width;

  const CustomDialog({
    super.key,
    this.title,
    this.icon,
    required this.child,
    this.width = 700,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: width,
          minWidth: width,
        ),
        decoration: BoxDecoration(
          color: context.colors.surface,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: context.colors.onBackground.withOpacityCpy(.05),
          ),
        ),
        child: Material(
          color: context.colors.surface,
          borderRadius: BorderRadius.circular(12.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: switch ((title, icon)) {
              (final String title, final IconData icon) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                      children: [
                        const SizedBox(width: 8),
                        Icon(icon, size: 16, color: context.colors.onSurface.withOpacityCpy(.6)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(title,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: context.colors.onSurface.withOpacityCpy(.6),
                            )),
                        ),
                      ],
                    ),
                  const SizedBox(height: 16),
                  child,
                ],
              ),
              _ => child,
            },
          ),
        ),
      ),
    );
  }
}