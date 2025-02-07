// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_entity.freezed.dart';
part 'campaign_entity.g.dart';

enum CampaignStatus {
  scheduled,
  sent,
  failed,
}

@freezed
sealed class CampaignEntity with _$CampaignEntity {
  const factory CampaignEntity({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(name: 'created_at') DateTime? creationDate,
    required String title,
    required String body,
    @JsonKey(name: 'scheduled_at') DateTime? scheduledDate,
    @JsonKey(name: 'extra_data') Map<String,dynamic>? extraData,
    required String channel,
    required CampaignStatus status,
  }) = CampaignEntityData;

  const CampaignEntity._();

  factory CampaignEntity.fromJson(Map<String, Object?> json) =>
      _$CampaignEntityFromJson(json);
}