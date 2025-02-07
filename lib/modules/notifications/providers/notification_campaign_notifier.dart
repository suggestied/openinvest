import 'dart:convert';

import 'package:apparence_kit/core/data/repositories/campaign_repository.dart';
import 'package:apparence_kit/modules/notifications/models/notification_campaign_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_campaign_notifier.g.dart';

@riverpod
class NotificationCampaignNotifier extends _$NotificationCampaignNotifier {
  @override
  NotificationCampaignState build() {
    return NotificationCampaignState();
  }

  Future<void> create({
    required String title,
    required String body,
    required DateTime scheduledDate,
    required String extraData,
    required String channel,
  }) async {
    Map<String, dynamic>? data;
    if (extraData.isNotEmpty) {
      data = json.decode(extraData) as Map<String, dynamic>;
    }
    await ref.read(campaignRepositoryProvider).create(
          title: title,
          body: body,
          scheduledDate: scheduledDate,
          channel: channel,
          data: data,
        );
    
  }

  Future<void> delete(String campaignId) async {
    await ref.read(campaignRepositoryProvider).delete(campaignId);
  }
}

extension NotificationCampaignNotifierExt on Ref {
  NotificationCampaignNotifier get notificationCampaignNotifier =>
      read(notificationCampaignNotifierProvider.notifier);
}

extension NotificationCampaignNotifierWidgetRefExt on WidgetRef {
  NotificationCampaignNotifier get notificationCampaignNotifier =>
      read(notificationCampaignNotifierProvider.notifier);
}
