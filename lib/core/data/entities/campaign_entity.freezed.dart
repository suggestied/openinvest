// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CampaignEntity _$CampaignEntityFromJson(Map<String, dynamic> json) {
  return CampaignEntityData.fromJson(json);
}

/// @nodoc
mixin _$CampaignEntity {
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get creationDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_at')
  DateTime? get scheduledDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_data')
  Map<String, dynamic>? get extraData => throw _privateConstructorUsedError;
  String get channel => throw _privateConstructorUsedError;
  CampaignStatus get status => throw _privateConstructorUsedError;

  /// Serializes this CampaignEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignEntityCopyWith<CampaignEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignEntityCopyWith<$Res> {
  factory $CampaignEntityCopyWith(
          CampaignEntity value, $Res Function(CampaignEntity) then) =
      _$CampaignEntityCopyWithImpl<$Res, CampaignEntity>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(name: 'created_at') DateTime? creationDate,
      String title,
      String body,
      @JsonKey(name: 'scheduled_at') DateTime? scheduledDate,
      @JsonKey(name: 'extra_data') Map<String, dynamic>? extraData,
      String channel,
      CampaignStatus status});
}

/// @nodoc
class _$CampaignEntityCopyWithImpl<$Res, $Val extends CampaignEntity>
    implements $CampaignEntityCopyWith<$Res> {
  _$CampaignEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? title = null,
    Object? body = null,
    Object? scheduledDate = freezed,
    Object? extraData = freezed,
    Object? channel = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledDate: freezed == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CampaignStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignEntityDataImplCopyWith<$Res>
    implements $CampaignEntityCopyWith<$Res> {
  factory _$$CampaignEntityDataImplCopyWith(_$CampaignEntityDataImpl value,
          $Res Function(_$CampaignEntityDataImpl) then) =
      __$$CampaignEntityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(name: 'created_at') DateTime? creationDate,
      String title,
      String body,
      @JsonKey(name: 'scheduled_at') DateTime? scheduledDate,
      @JsonKey(name: 'extra_data') Map<String, dynamic>? extraData,
      String channel,
      CampaignStatus status});
}

/// @nodoc
class __$$CampaignEntityDataImplCopyWithImpl<$Res>
    extends _$CampaignEntityCopyWithImpl<$Res, _$CampaignEntityDataImpl>
    implements _$$CampaignEntityDataImplCopyWith<$Res> {
  __$$CampaignEntityDataImplCopyWithImpl(_$CampaignEntityDataImpl _value,
      $Res Function(_$CampaignEntityDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? title = null,
    Object? body = null,
    Object? scheduledDate = freezed,
    Object? extraData = freezed,
    Object? channel = null,
    Object? status = null,
  }) {
    return _then(_$CampaignEntityDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledDate: freezed == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      extraData: freezed == extraData
          ? _value._extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CampaignStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignEntityDataImpl extends CampaignEntityData {
  const _$CampaignEntityDataImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(name: 'created_at') this.creationDate,
      required this.title,
      required this.body,
      @JsonKey(name: 'scheduled_at') this.scheduledDate,
      @JsonKey(name: 'extra_data') final Map<String, dynamic>? extraData,
      required this.channel,
      required this.status})
      : _extraData = extraData,
        super._();

  factory _$CampaignEntityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignEntityDataImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? creationDate;
  @override
  final String title;
  @override
  final String body;
  @override
  @JsonKey(name: 'scheduled_at')
  final DateTime? scheduledDate;
  final Map<String, dynamic>? _extraData;
  @override
  @JsonKey(name: 'extra_data')
  Map<String, dynamic>? get extraData {
    final value = _extraData;
    if (value == null) return null;
    if (_extraData is EqualUnmodifiableMapView) return _extraData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String channel;
  @override
  final CampaignStatus status;

  @override
  String toString() {
    return 'CampaignEntity(id: $id, creationDate: $creationDate, title: $title, body: $body, scheduledDate: $scheduledDate, extraData: $extraData, channel: $channel, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignEntityDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.scheduledDate, scheduledDate) ||
                other.scheduledDate == scheduledDate) &&
            const DeepCollectionEquality()
                .equals(other._extraData, _extraData) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creationDate,
      title,
      body,
      scheduledDate,
      const DeepCollectionEquality().hash(_extraData),
      channel,
      status);

  /// Create a copy of CampaignEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignEntityDataImplCopyWith<_$CampaignEntityDataImpl> get copyWith =>
      __$$CampaignEntityDataImplCopyWithImpl<_$CampaignEntityDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignEntityDataImplToJson(
      this,
    );
  }
}

abstract class CampaignEntityData extends CampaignEntity {
  const factory CampaignEntityData(
      {@JsonKey(includeIfNull: false) final String? id,
      @JsonKey(name: 'created_at') final DateTime? creationDate,
      required final String title,
      required final String body,
      @JsonKey(name: 'scheduled_at') final DateTime? scheduledDate,
      @JsonKey(name: 'extra_data') final Map<String, dynamic>? extraData,
      required final String channel,
      required final CampaignStatus status}) = _$CampaignEntityDataImpl;
  const CampaignEntityData._() : super._();

  factory CampaignEntityData.fromJson(Map<String, dynamic> json) =
      _$CampaignEntityDataImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get creationDate;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(name: 'scheduled_at')
  DateTime? get scheduledDate;
  @override
  @JsonKey(name: 'extra_data')
  Map<String, dynamic>? get extraData;
  @override
  String get channel;
  @override
  CampaignStatus get status;

  /// Create a copy of CampaignEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignEntityDataImplCopyWith<_$CampaignEntityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
