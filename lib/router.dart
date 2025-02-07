import 'package:apparence_kit/core/data/api/analytics_api.dart';
import 'package:apparence_kit/core/guards/authenticated_guard.dart';
import 'package:apparence_kit/core/menu/bottom_menu.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/page_not_found.dart';
import 'package:apparence_kit/modules/authentication/ui/recover_password_page.dart';
import 'package:apparence_kit/modules/authentication/ui/signin_page.dart';
import 'package:apparence_kit/modules/devices/ui/devices_list_page.dart';
import 'package:apparence_kit/modules/notifications/ui/notifications_campaign_list_page.dart';
import 'package:apparence_kit/modules/subscriptions/ui/subscriptions_list_page.dart';
import 'package:apparence_kit/modules/user_requests/ui/user_requests_list_page.dart';
import 'package:apparence_kit/modules/users/ui/user_profile_page.dart';
import 'package:apparence_kit/modules/users/ui/users_list_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final navigatorKey = GlobalKey<NavigatorState>();

GoRouter generateRouter({
  String? initialLocation,
  List<GoRoute>? additionalRoutes,
  List<NavigatorObserver>? observers,
}) {
  return GoRouter(
    initialLocation: '/users',
    navigatorKey: navigatorKey,
    errorBuilder: (context, state) => const PageNotFound(),
    observers: [
      AnalyticsObserver(
        analyticsApi: MixpanelAnalyticsApi.instance(),
      ),
      ...?observers,
    ],
    routes: [
      StatefulShellRoute(
        parentNavigatorKey: navigatorKey,
        builder: (context, state, navigationShell) => Menu(
          navigationShell: navigationShell,
          state: state,
        ),
        navigatorContainerBuilder: (
          BuildContext context,
          StatefulNavigationShell navigationShell,
          List<Widget> children,
        ) {
          if(children.isEmpty) {
            return Center(child: Text("no children"));
          }
          return Scaffold(
            backgroundColor: context.colors.background,
            body: children[navigationShell.currentIndex],
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: 'users',
                path: '/users',
                builder: (context, state) => const AuthenticatedGuard(
                  fallbackRoute: '/signin',
                  child: UsersPage(),
                ),
              ),
              GoRoute(
                name: 'user profile',
                path: '/users/:userId',
                builder: (context, state) =>  AuthenticatedGuard(
                  fallbackRoute: '/signin',
                  child: UserProfilePage(userId: state.pathParameters['userId']!),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: 'notifications',
                path: '/notifications',
                builder: (context, state) => AuthenticatedGuard(
                  fallbackRoute: '/signin',
                  child: NotificationsCampaignListPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: 'subscriptions',
                path: '/subscriptions',
                builder: (context, state) => const AuthenticatedGuard(
                  fallbackRoute: '/signin',
                  child: SubscriptionsListPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: 'devices',
                path: '/devices',
                builder: (context, state) => const AuthenticatedGuard(
                  fallbackRoute: '/signin',
                  child: DevicesListPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: 'user-requests',
                path: '/user-requests',
                builder: (context, state) => const AuthenticatedGuard(
                  fallbackRoute: '/signin',
                  child: UserRequestsListPage(),
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: 'signin',
        path: '/signin',
        builder: (context, state) => const SigninPage(),
      ),
      GoRoute(
        name: 'recover_password',
        path: '/recover_password',
        builder: (context, state) => const RecoverPasswordPage(),
      ),
      GoRoute(
        name: '404',
        path: '/404',
        builder: (context, state) => const PageNotFound(),
      ),
    ],
  );
}
