import 'package:apparence_kit/core/menu/widgets/sidebar_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

class SidebarTabs extends ConsumerWidget {
  // final List<BartMenuRoute> routes;
  final GoRouterState state;

  const SidebarTabs({
    super.key,
    required this.state,
  });

  bool isRouteActive(String route) {
    return state.matchedLocation.startsWith(route);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SideBarCategory(
      category: "General",
      items: [
        SideBarCategoryItem(
          icon: HugeIcons.strokeRoundedUserMultiple,
          title: 'Users',
          isActive: isRouteActive('/users'),
          onTap: () {
            if (isRouteActive('/users')) {
              return;
            }
            context.go('/users');
          },
        ),
        SideBarCategoryItem(
          icon: HugeIcons.strokeRoundedPiggyBank,
          title: 'Subscriptions',
          isActive: isRouteActive('/subscriptions'),
          onTap: () {
            if (isRouteActive('/subscriptions')) {
              return;
            }
            context.go('/subscriptions');
          },
        ),
        SideBarCategoryItem(
          icon: HugeIcons.strokeRoundedNotification01,
          title: 'Notifications',
          isActive: isRouteActive('/notifications'),
          onTap: () {
            if (isRouteActive('/notifications')) {
              return;
            }
            context.go('/notifications');
          },
        ),
        SideBarCategoryItem.fromPath(
          context: context,
          icon: HugeIcons.strokeRoundedSmartPhone01,
          title: 'Devices',
          path: '/devices',
          routerState: state,
        ),
        SideBarCategoryItem.fromPath(
          context: context,
          icon: HugeIcons.strokeRoundedInboxDownload,
          title: 'User requests',
          path: '/user-requests',
          routerState: state,
        ),
      ],
    );
  }
}
