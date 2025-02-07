
import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideBarCategory extends StatelessWidget {
  final String? category;
  final List<Widget> items;

  const SideBarCategory({
    super.key,
    this.category,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (category != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              child: Text(
                category!.toUpperCase(),
                style: context.textTheme.bodySmall?.copyWith(
                  color: const Color(0xFF666666),
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ...items,
        ],
      ),
    );
  }
}


class SideBarCategoryItem extends StatefulWidget {
  final String title;
  final bool isActive;

  final VoidCallback? onTap;
  final Widget? prefix;
  final IconData? icon;
  final double? opacity;

  const SideBarCategoryItem({
    super.key,
    this.prefix,
    required this.title,
    this.onTap,
    this.isActive = false,
    this.opacity,
    this.icon,
  });

  factory SideBarCategoryItem.fromPath({
    required BuildContext context, 
    required GoRouterState routerState, 
    required String path,
    required IconData icon,
    required String title,
  }) {
    final isRouteActive = routerState.matchedLocation.startsWith(path);
    return SideBarCategoryItem(
      icon: icon,
      title: title,
      isActive: isRouteActive,
      onTap: () {
        if (isRouteActive) {
          return;
        }
        context.go(path);
      },
    );
  }

  @override
  State<SideBarCategoryItem> createState() => _SideBarCategoryItemState();
}

class _SideBarCategoryItemState extends State<SideBarCategoryItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: InkWell(
          onTap: () => widget.onTap?.call(),
          onHover: (value) => setState(() => isHover = value),
          borderRadius: BorderRadius.circular(12),
          child: Ink(
            height: 40,
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              color: switch ((widget.isActive, isHover)) {
                (true, _) => context.colors.background,
                (false, true) => context.colors.background.withOpacityCpy(.8),
                (_, _) => Colors.transparent,
              },
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                if (widget.prefix != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: widget.prefix,
                  ),
                if (widget.icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0), 
                    child: SidebarItemIcon(
                      icon: widget.icon, 
                      color: switch ((widget.isActive, isHover)) {
                        (true, _) => context.colors.onBackground,
                        (false, true) => context.colors.onBackground,
                        (_, _) => context.colors.background.withOpacityCpy(.8),
                      },
                    ),
                  ),
                Expanded(
                  child: Text(
                    widget.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: switch ((widget.isActive, isHover)) {
                        (true, _) => context.colors.onBackground,
                        (false, true) => context.colors.onBackground,
                        (_, _) => context.colors.background.withOpacityCpy(.8),
                      },
                      fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SidebarItemIcon extends StatelessWidget {
  final IconData? icon;
  final String? iconImage;
  final double opacity;
  final Color? color;

  const SidebarItemIcon({
    super.key,
    this.icon,
    this.iconImage,
    this.opacity = 1,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: icon != null
          ? Icon(
              icon,
              size: 20,
              color: color ?? context.colors.onBackground.withOpacityCpy(opacity),
            )
          : ColorFiltered(
              colorFilter: ColorFilter.mode(
                color ?? context.colors.background,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                iconImage!,
                width: 20,
                height: 20,
              ),
            ),
    );
  }
}