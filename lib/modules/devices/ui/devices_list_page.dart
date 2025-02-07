import 'package:apparence_kit/core/components/data_table/raw_data_models.dart';
import 'package:apparence_kit/core/components/data_table/raw_data_notifier.dart';
import 'package:apparence_kit/core/components/data_table/raw_data_table.dart';
import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/large_card.dart';
import 'package:apparence_kit/core/widgets/responsive_layout.dart';
import 'package:apparence_kit/modules/devices/ui/widgets/os_badge.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';

class DevicesListPage extends StatefulWidget {
  const DevicesListPage({super.key});

  @override
  State<DevicesListPage> createState() => _DevicesListPageState();
}

class _DevicesListPageState extends State<DevicesListPage> {

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
                    tableName: 'devices',
                    orderBy: 'creation_date',
                    orderAscending: false,
                    fields: [
                      Field.fromString(name: 'id'),
                      // Field.fromString(name: 'user_id'),
                      Field.fromDateTime(name: 'creation_date'),
                      Field.fromDateTime(name: 'last_update_date'),
                      Field.fromString(
                        name: 'operatingSystem',
                        builder: (value) => OSBadge.fromStr(value as String),
                      ),
                    ],
                    actionsBuilder: (row) {
                      return [
                        IconButton(
                          onPressed: () => context.go('/users/${row.where((el) => el.name == 'user_id').first.value}'),
                          icon: Icon(HugeIcons.strokeRoundedUser, size: 14, color: context.colors.onSurface),
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
