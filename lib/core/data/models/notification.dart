// ignore_for_file: invalid_annotation_target, constant_identifier_names

import 'package:apparence_kit/core/data/entities/notifications_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const Notification._();

  const factory Notification.withData({
    String? id,
    required String title,
    required String body,
    required DateTime createdAt,
    DateTime? readAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    NotificationTypes? type,
    Map<String, dynamic>? data,
  }) = NotificationData;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  factory Notification.fromEntity(NotificationEntity entity) => Notification.withData(
        id: entity.id,
        title: entity.title,
        body: entity.body,
        createdAt: entity.creationDate,
        readAt: entity.readDate,
        type: entity.type,
        data: entity.data,
      );

  factory Notification.from(
    Map<String, dynamic> json, {
    String? id,
    Map<String, dynamic>? data,
  }) =>
      Notification.withData(
        id: id,
        title: json['title'] as String,
        body: json['body'] as String,
        type: data != null && data.containsKey('type')
            ? NotificationTypes.values.firstWhere(
                (e) => e.name == data['type'],
                orElse: () => NotificationTypes.OTHER,
              )
            : null,
        data: data,
        createdAt: DateTime.now(),
      );

  bool get seen => readAt != null;

  
}
