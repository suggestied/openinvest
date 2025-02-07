import 'package:apparence_kit/core/components/data_table/raw_data_models.dart';
import 'package:apparence_kit/core/components/data_table/raw_data_notifier.dart';
import 'package:apparence_kit/core/components/data_table/raw_data_table.dart';
import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/large_card.dart';
import 'package:apparence_kit/core/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubscriptionsListPage extends StatefulWidget {
  const SubscriptionsListPage({super.key});

  @override
  State<SubscriptionsListPage> createState() => _SubscriptionsListPageState();
}

class _SubscriptionsListPageState extends State<SubscriptionsListPage> {

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.colors.background,
      child: SingleChildScrollView(
        child: LargeLayoutContainer(
          maxWidth: 1200,
          child: Column(
            children: [
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 80),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(32, 24, 32, 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: context.colors.surface,
                    border: Border.all(
                      color: context.colors.onBackground.withOpacityCpy(.1),
                    ),
                  ),
                  child: RawDataTableComponent(
                    tableName: 'subscriptions',
                    orderBy: 'creation_date',
                    orderAscending: false,
                    fields: [
                      Field.fromString(name: 'user_id'),
                      Field.fromDateTime(name: 'creation_date'),
                      Field.fromDateTime(name: 'period_end_date'),
                      Field.fromString(name: 'sku_id'),
                      Field.fromString(name: 'store'),
                      Field.fromString(name: 'status'),
                    ],
                    actionsBuilder: (row) {
                      return [
                        IconButton(
                          onPressed: () => context.go('/users/${row.where((el) => el.name == 'user_id').first.value}'),
                          icon: Icon(Icons.arrow_forward_ios, size: 14, color: context.colors.onSurface),
                        ),
                      ];
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
