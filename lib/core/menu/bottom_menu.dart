import 'package:apparence_kit/core/menu/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Menu extends StatelessWidget {
  // final Widget content;
  final StatefulNavigationShell navigationShell;
  final GoRouterState state;

  const Menu({
    super.key,
    required this.navigationShell,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SideBar(state: state),
        Expanded(
          child: navigationShell,
        ),
      ],
    );
  }
}
