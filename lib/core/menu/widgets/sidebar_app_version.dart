import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sidebar_app_version.g.dart';

@riverpod
Future<String> fetchAppVersion(Ref ref) async {
  final packageInfo = await PackageInfo.fromPlatform();
  return '${packageInfo.version}+${packageInfo.buildNumber}';
}

class SidebarAppVersion extends ConsumerWidget {
  const SidebarAppVersion({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appVersion = ref.watch(fetchAppVersionProvider);

    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 0, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            "Version ${appVersion.value}",
            textAlign: TextAlign.center,
            style: context.textTheme.labelSmall?.copyWith(
              color: context.colors.grey1,
            ),
          ),
          Text(
            "©2025 Apparence.io",
            textAlign: TextAlign.center,
            style: context.textTheme.labelSmall?.copyWith(
              color: context.colors.grey2,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
