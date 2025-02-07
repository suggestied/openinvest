import 'package:apparence_kit/core/data/api/base_api_exceptions.dart';
import 'package:apparence_kit/core/data/entities/campaign_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final campaignApiProvider = Provider<CampaignApi>(
  (ref) => CampaignApi(
      client: Supabase.instance.client,
    ),
);


const _tableName = 'notification_campaigns';

class CampaignApi {
  final SupabaseClient _client;

  CampaignApi({
    required SupabaseClient client,
  }) : _client = client;

  Future<CampaignEntity> create({
    required CampaignEntity entity
  }) async {
    try {
      final res = await _client
          .from(_tableName)
          .insert(entity..toJson().remove('id'))
          .select();
      return CampaignEntity.fromJson(res.first);
    } catch (e, stacktrace) {
      throw ApiError(
        code: 0,
        message: '$e: $stacktrace',
      );
    }
  }

  Future<void> delete(String campaignId) async {
    try {
      await _client
          .from(_tableName)
          .delete()
          .eq('id', campaignId);
    } catch (e, stacktrace) {
      throw ApiError(
        code: 0,
        message: '$e: $stacktrace',
      );
    }
  }

}