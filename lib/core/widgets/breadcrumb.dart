import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// TODO: rework the Breadcrumb widget 
/// This will not work for 2+ levels of navigation
class Breadcrumb extends StatelessWidget {
  final List<String> paths;

  Breadcrumb({required this.paths});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: List.generate(paths.length, (index) {
        final isLast = index == paths.length -1;
        final path = paths[index];
        final item = InkWell(
          onTap: isLast ? null : () => context.go("/$path"),
          child: Text(
            path,
            style: context.textTheme.bodyMedium?.copyWith(
              color: isLast ? Colors.black54 : Colors.blue,
              fontWeight: isLast ? FontWeight.w300 : FontWeight.w700,
            ),
          ),
        );
        if(isLast) {
          return item;
        } else {
          return Row(
            spacing: 8,
            children: [
              item,
              Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black54),
            ],
          );
        }
      }),
    );
  }
}
