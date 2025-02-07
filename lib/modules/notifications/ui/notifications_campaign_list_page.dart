import 'package:apparence_kit/core/components/data_table/raw_data_models.dart';
import 'package:apparence_kit/core/components/data_table/raw_data_table.dart';
import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/menu/widgets/dialog.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/custom_card.dart';
import 'package:apparence_kit/core/widgets/responsive_layout.dart';
import 'package:apparence_kit/core/widgets/toast.dart';
import 'package:apparence_kit/modules/notifications/providers/notification_campaign_notifier.dart';
import 'package:apparence_kit/modules/notifications/ui/components/new_campaign.dart';
import 'package:apparence_kit/modules/notifications/ui/widgets/status_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';

class NotificationsCampaignListPage extends ConsumerWidget {
  final RawDataController _scheduledCampaignsController = RawDataController();

  NotificationsCampaignListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: LargeLayoutContainer(
        maxWidth: 1200,
        child: Column(
          children: [
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () => showNewNotificationCampaignDialog(
                    context: context,
                    onNewCampaign: ({
                      required String title,
                      required String body,
                      required DateTime scheduledDate,
                      required String extraData,
                      required String channel,
                    }) async {
                      try {
                        await ref.notificationCampaignNotifier.create(
                          title: title,
                          body: body,
                          scheduledDate: scheduledDate,
                          extraData: extraData,
                          channel: channel,
                        );
                        _scheduledCampaignsController.refresh();
                        ref.read(toastProvider).success(title: "Campaign sent", text: "The campaign has been scheduled successfully");
                      } catch (e,stacktrace) {
                        debugPrint("Failed to schedule campaign: $e - $stacktrace");
                        ref.read(toastProvider).error(title: "Failed to schedule campaign", text: "An error occurred while sending the campaign");
                      }
                    },
                  ), 
                  child: Text("Create new campaign"),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: ScheduledCampaignsTable(
                controller: _scheduledCampaignsController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 80),
              child: ArchivedCampaignsTable(),
            ),
          ],
        ),
      ),
    );
  }
}

class ScheduledCampaignsTable extends ConsumerWidget {
  final RawDataController controller;

  const ScheduledCampaignsTable({
    super.key,
    required this.controller,  
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomCard(
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 8),
              Icon(HugeIcons.strokeRoundedTimeSchedule, size: 16, color: context.colors.onSurface.withOpacityCpy(.6)),
              const SizedBox(width: 8),
              Expanded(
                child: Text("Scheduled campaigns",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.colors.onSurface.withOpacityCpy(.6),
                  )),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: RawDataTableComponent(
              showSearchBar: false,
              showPagination: false,
              showCheckbox: false,
              controller: controller,
              tableName: 'notification_campaigns',
              orderBy: 'scheduled_at',
              filters: [
                RawDataFilter(column: 'status', operator: 'eq', value: 'scheduled'),
              ],
              orderAscending: false,
              fields: [
                Field.fromDateTime(name: 'scheduled_at'),
                Field.fromString(name: 'id'),
                Field.fromString(name: 'title'),
                Field.fromString(name: 'body'),
                Field.fromString(name: 'channel'),
                Field.fromString(
                  name: 'status', 
                  builder: (status) => StatusBadge.fromStr(status as String),
                ),
              ],
              actionsBuilder: (row) {
                return [
                  IconButton(
                    icon: Icon(HugeIcons.strokeRoundedDelete01, size: 14, color: context.colors.onSurface),
                    onPressed: () => showDialog(
                      context: context, 
                      builder: (context) => CustomDialog(
                        width: 450,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delete this campaign?",
                              style: context.textTheme.headlineSmall?.copyWith(
                                color: context.colors.onSurface,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text("Cancel"),
                                ),
                                const SizedBox(width: 16),
                                TextButton(
                                  onPressed: () async {
                                    try {
                                      await ref.notificationCampaignNotifier.delete(
                                        row.where((field) => field.name == 'id').first.value as String,
                                      );
                                      // ref.read(toastProvider).success(title: "Campaign deleted", text: "The campaign has been deleted successfully");
                                      controller.refresh();
                                      if(context.mounted) {
                                        Navigator.of(context).pop();
                                      }
                                    } catch (e, stacktrace) {
                                      debugPrint("Failed to delete campaign: $e - $stacktrace");
                                    }
                                  },
                                  child: Text("Delete"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ];
              },
            ),
          ),
        ],
      ),
    );
  }
}


class ArchivedCampaignsTable extends StatelessWidget {
  const ArchivedCampaignsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 8),
              Icon(HugeIcons.strokeRoundedCalendarCheckIn01, size: 16, color: context.colors.onSurface.withOpacityCpy(.6)),
              const SizedBox(width: 8),
              Expanded(
                child: Text("Past campaigns",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.colors.onSurface.withOpacityCpy(.6),
                  )),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: RawDataTableComponent(
              showCheckbox: false,
              showSearchBar: false,
              tableName: 'notification_campaigns',
              orderBy: 'scheduled_at',
              orderAscending: false,
              filters: [
                RawDataFilter(column: 'status', operator: 'neq', value: 'scheduled'),
              ],
              fields: [
                Field.fromDateTime(name: 'scheduled_at'),
                Field.fromString(name: 'id'),
                Field.fromString(name: 'title'),
                Field.fromString(name: 'body'),
                Field.fromString(name: 'channel'),
                Field.fromString(
                  name: 'status', 
                  builder: (status) => StatusBadge.fromStr(status as String),
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}

