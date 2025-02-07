// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignEntityDataImpl _$$CampaignEntityDataImplFromJson(Map json) =>
    _$CampaignEntityDataImpl(
      id: json['id'] as String?,
      creationDate: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      title: json['title'] as String,
      body: json['body'] as String,
      scheduledDate: json['scheduled_at'] == null
          ? null
          : DateTime.parse(json['scheduled_at'] as String),
      extraData: (json['extra_data'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      channel: json['channel'] as String,
      status: $enumDecode(_$CampaignStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$CampaignEntityDataImplToJson(
        _$CampaignEntityDataImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'created_at': instance.creationDate?.toIso8601String(),
      'title': instance.title,
      'body': instance.body,
      'scheduled_at': instance.scheduledDate?.toIso8601String(),
      'extra_data': instance.extraData,
      'channel': instance.channel,
      'status': _$CampaignStatusEnumMap[instance.status]!,
    };

const _$CampaignStatusEnumMap = {
  CampaignStatus.scheduled: 'scheduled',
  CampaignStatus.sent: 'sent',
  CampaignStatus.failed: 'failed',
};
