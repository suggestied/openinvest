import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class OSBadge extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String text;

  const OSBadge({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.text,
  });

  factory OSBadge.ios() {
    return OSBadge(
      bgColor: Colors.blueAccent,
      textColor: Colors.white,
      text: 'iOS',
    );
  }

  factory OSBadge.android() {
    return OSBadge(
      bgColor: Colors.white,
      textColor: Colors.green,
      text: 'ANDROID',
    );
  }

  factory OSBadge.web() {
    return OSBadge(
      bgColor: Colors.white,
      textColor: Colors.black,
      text: 'WEB',
    );
  }

  factory OSBadge.fromStr(String? platform) {
    switch (platform) {
      case 'ios':
        return OSBadge.ios();
      case 'android':
        return OSBadge.android();
      case 'web':
        return OSBadge.web();
      default:
        return OSBadge(
          bgColor: Colors.grey.withOpacityCpy(0.1),
          textColor: Colors.grey,
          text: platform?.toUpperCase() ?? 'UNKNOWN',
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.colors.background,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Text(
        text,
        textAlign: TextAlign.center, 
        style: context.textTheme.bodyMedium?.copyWith(
          fontSize: 10,
          color: textColor
        ),
      ),
    );
  }
}