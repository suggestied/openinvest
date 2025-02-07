// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/menu/widgets/app_logo.dart';
import 'package:apparence_kit/core/menu/widgets/sidebar_app_version.dart';
import 'package:apparence_kit/core/menu/widgets/sidebar_category.dart';
import 'package:apparence_kit/core/menu/widgets/sidebar_tabs.dart';
import 'package:apparence_kit/core/states/user_state_notifier.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

class SideBar extends ConsumerWidget {
  final GoRouterState state;

  const SideBar({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: 280,
          height: constraints.maxHeight,
          decoration: BoxDecoration(
            color: context.colors.onBackground,
            border: Border(
              right: BorderSide(
                color: context.colors.onBackground.withOpacityCpy(.05),
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 72),
              SidebarTabs(
                state: state,
              ),
              SideBarCategory(
                category: "Settings",
                items: [
                  SideBarCategoryItem(
                    icon: HugeIcons.strokeRoundedLogout01,
                    title: 'Logout',
                    onTap: () {
                      logoutPopup(context, ref);
                    },
                  ),
                ],
              ),
              Spacer(),
              const AppLogo(),
              const SidebarAppVersion(),
              const SizedBox(height: 32),
            ],
          ),
        );
      }
    );
  }
}


void logoutPopup(BuildContext context, WidgetRef ref) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Log out?"),
        content: Text("Confirm to log out"),
        actions: <Widget>[
          TextButton(
            child: Text("Cancel"),
            onPressed: () => Navigator.of(context).pop(),
          ),
          TextButton(
            child: Text("Log out"),
            onPressed: () {
              ref.read(userStateNotifierProvider.notifier).onLogout();
            },
          ),
        ],
      );
    },
  );
}
