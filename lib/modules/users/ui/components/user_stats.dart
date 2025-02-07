
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/large_card.dart';
import 'package:apparence_kit/modules/users/providers/users_stats_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TotalUserCardComponent extends ConsumerWidget {
  const TotalUserCardComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalUsers = ref.watch(fetchTotalUsersProvider);
    
    return switch (totalUsers) {
      AsyncLoading() => LargeCard(
        label: 'Total users',
        title: '--',
        subtitle: 'From beginning',
        backgroundColor: context.colors.primary,
        textColor: context.colors.background,
      ),
      AsyncData(:final value) => LargeCard(
        label: 'Total users',
        title: value.toString(),
        subtitle: 'From beginning',
        backgroundColor: context.colors.primary,
        textColor: context.colors.background,
        onTap: () {},
      ),
      _ => SizedBox(),
    };
  }
}

class TotalSubscriptionCardComponent extends ConsumerWidget {
  const TotalSubscriptionCardComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalUsers = ref.watch(fetchTotalSubscriptionsProvider);
    
    return switch (totalUsers) {
      AsyncLoading() => LargeCard(
        label: 'Subscriptions',
        title: '--',
        subtitle: 'Active',
        backgroundColor: context.colors.primary,
        textColor: context.colors.background,
      ),
      AsyncData(:final value) => LargeCard(
        label: 'Subscriptions',
        title: value.toString(),
        subtitle: 'Active',
        backgroundColor: context.colors.primary,
        textColor: context.colors.background,
        onTap: () {},
      ),
      _ => SizedBox(),
    };
  }
}