import 'package:apparence_kit/core/data/api/campaign_api.dart';
import 'package:apparence_kit/core/data/entities/campaign_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final campaignRepositoryProvider = Provider<CampaignRepository>(
  (ref) {
    return CampaignRepository(
      campaignApi: ref.watch(campaignApiProvider),
    );
  },
);

class CampaignRepository {
  final CampaignApi _campaignApi;

  CampaignRepository({
    required CampaignApi campaignApi,
  }) : _campaignApi = campaignApi;

  Future<void> create({
    required String title,
    required String body,
    required DateTime scheduledDate,
    required String channel,
    required Map<String, dynamic>? data,
  }) async {
    final entity = CampaignEntity(
      title: title,
      body: body,
      scheduledDate: scheduledDate,
      creationDate: DateTime.now(),
      channel: channel,
      extraData: data,
      status: CampaignStatus.scheduled,
    );
    await _campaignApi.create(entity: entity);
  }

  Future<void> delete(String campaignId) async {
    await _campaignApi.delete(campaignId);
  }
  
}