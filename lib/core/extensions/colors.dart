import 'package:flutter/material.dart';

extension ColorExt on Color {
  Color withOpacityCpy(double opacity) {
    return withAlpha((255.0 * opacity).round());
  }
}
