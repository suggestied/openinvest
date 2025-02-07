import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class StatusBadge extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String text;

  const StatusBadge({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.text,
  });

  factory StatusBadge.scheduled() {
    return StatusBadge(
      bgColor: Colors.blue.withOpacityCpy(0.1),
      textColor: Colors.blue,
      text: 'SCHEDULED',
    );
  }

  factory StatusBadge.sent() {
    return StatusBadge(
      bgColor: Colors.green.withOpacityCpy(0.1),
      textColor: Colors.green,
      text: 'SENT',
    );
  }

  factory StatusBadge.failed() {
    return StatusBadge(
      bgColor: Colors.red.withOpacityCpy(0.1),
      textColor: Colors.red,
      text: 'FAILED',
    );
  }

  factory StatusBadge.fromStr(String? status) {
    switch (status) {
      case 'scheduled':
        return StatusBadge.scheduled();
      case 'sent':
        return StatusBadge.sent();
      case 'failed':
        return StatusBadge.failed();
      default:
        return StatusBadge(
          bgColor: Colors.grey.withOpacityCpy(0.1),
          textColor: Colors.grey,
          text: status?.toUpperCase() ?? 'UNKNOWN',
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