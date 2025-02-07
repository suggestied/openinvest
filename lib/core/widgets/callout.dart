import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class Callout extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color bgColor;
  final Color textColor;

  const Callout({
    super.key,
    required this.icon,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  factory Callout.info(String text) {
    return Callout(
      icon: HugeIcons.strokeRoundedInformationCircle,
      text: text,
      bgColor: Colors.blue.withOpacityCpy(.1),
      textColor: Colors.blue,
    );
  }

  factory Callout.warning(String text) {
    return Callout(
      icon: HugeIcons.strokeRoundedDanger,
      text: text,
      bgColor: Colors.orange.withOpacityCpy(.1),
      textColor: Colors.orange,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: textColor.withOpacityCpy(.05),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          Icon(icon, size: 21, color: textColor.withOpacityCpy(.6)),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: textColor.withOpacityCpy(.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
