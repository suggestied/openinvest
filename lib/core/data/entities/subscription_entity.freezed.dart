// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionEntity _$SubscriptionEntityFromJson(Map<String, dynamic> json) {
  return SubscriptionEntityData.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionEntity {
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku_id')
  String get skuId => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_date')
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_update_date')
  DateTime? get lastUpdateDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_end_date')
  DateTime? get periodEndDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  SubscriptionStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'store')
  SubscriptionStore get store => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionEntityCopyWith<SubscriptionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionEntityCopyWith<$Res> {
  factory $SubscriptionEntityCopyWith(
          SubscriptionEntity value, $Res Function(SubscriptionEntity) then) =
      _$SubscriptionEntityCopyWithImpl<$Res, SubscriptionEntity>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'sku_id') String skuId,
      @JsonKey(name: 'creation_date') DateTime? creationDate,
      @JsonKey(name: 'last_update_date') DateTime? lastUpdateDate,
      @JsonKey(name: 'period_end_date') DateTime? periodEndDate,
      @JsonKey(name: 'status') SubscriptionStatus status,
      @JsonKey(name: 'store') SubscriptionStore store});
}

/// @nodoc
class _$SubscriptionEntityCopyWithImpl<$Res, $Val extends SubscriptionEntity>
    implements $SubscriptionEntityCopyWith<$Res> {
  _$SubscriptionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? skuId = null,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
    Object? periodEndDate = freezed,
    Object? status = null,
    Object? store = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      skuId: null == skuId
          ? _value.skuId
          : skuId // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdateDate: freezed == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      periodEndDate: freezed == periodEndDate
          ? _value.periodEndDate
          : periodEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as SubscriptionStore,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionEntityDataImplCopyWith<$Res>
    implements $SubscriptionEntityCopyWith<$Res> {
  factory _$$SubscriptionEntityDataImplCopyWith(
          _$SubscriptionEntityDataImpl value,
          $Res Function(_$SubscriptionEntityDataImpl) then) =
      __$$SubscriptionEntityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'sku_id') String skuId,
      @JsonKey(name: 'creation_date') DateTime? creationDate,
      @JsonKey(name: 'last_update_date') DateTime? lastUpdateDate,
      @JsonKey(name: 'period_end_date') DateTime? periodEndDate,
      @JsonKey(name: 'status') SubscriptionStatus status,
      @JsonKey(name: 'store') SubscriptionStore store});
}

/// @nodoc
class __$$SubscriptionEntityDataImplCopyWithImpl<$Res>
    extends _$SubscriptionEntityCopyWithImpl<$Res, _$SubscriptionEntityDataImpl>
    implements _$$SubscriptionEntityDataImplCopyWith<$Res> {
  __$$SubscriptionEntityDataImplCopyWithImpl(
      _$SubscriptionEntityDataImpl _value,
      $Res Function(_$SubscriptionEntityDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? skuId = null,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
    Object? periodEndDate = freezed,
    Object? status = null,
    Object? store = null,
  }) {
    return _then(_$SubscriptionEntityDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      skuId: null == skuId
          ? _value.skuId
          : skuId // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdateDate: freezed == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      periodEndDate: freezed == periodEndDate
          ? _value.periodEndDate
          : periodEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as SubscriptionStore,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionEntityDataImpl implements SubscriptionEntityData {
  const _$SubscriptionEntityDataImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'sku_id') required this.skuId,
      @JsonKey(name: 'creation_date') this.creationDate,
      @JsonKey(name: 'last_update_date') this.lastUpdateDate,
      @JsonKey(name: 'period_end_date') this.periodEndDate,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'store') required this.store});

  factory _$SubscriptionEntityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionEntityDataImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'sku_id')
  final String skuId;
  @override
  @JsonKey(name: 'creation_date')
  final DateTime? creationDate;
  @override
  @JsonKey(name: 'last_update_date')
  final DateTime? lastUpdateDate;
  @override
  @JsonKey(name: 'period_end_date')
  final DateTime? periodEndDate;
  @override
  @JsonKey(name: 'status')
  final SubscriptionStatus status;
  @override
  @JsonKey(name: 'store')
  final SubscriptionStore store;

  @override
  String toString() {
    return 'SubscriptionEntity(id: $id, userId: $userId, skuId: $skuId, creationDate: $creationDate, lastUpdateDate: $lastUpdateDate, periodEndDate: $periodEndDate, status: $status, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionEntityDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.skuId, skuId) || other.skuId == skuId) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastUpdateDate, lastUpdateDate) ||
                other.lastUpdateDate == lastUpdateDate) &&
            (identical(other.periodEndDate, periodEndDate) ||
                other.periodEndDate == periodEndDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, skuId, creationDate,
      lastUpdateDate, periodEndDate, status, store);

  /// Create a copy of SubscriptionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionEntityDataImplCopyWith<_$SubscriptionEntityDataImpl>
      get copyWith => __$$SubscriptionEntityDataImplCopyWithImpl<
          _$SubscriptionEntityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionEntityDataImplToJson(
      this,
    );
  }
}

abstract class SubscriptionEntityData implements SubscriptionEntity {
  const factory SubscriptionEntityData(
          {@JsonKey(includeIfNull: false) final String? id,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'sku_id') required final String skuId,
          @JsonKey(name: 'creation_date') final DateTime? creationDate,
          @JsonKey(name: 'last_update_date') final DateTime? lastUpdateDate,
          @JsonKey(name: 'period_end_date') final DateTime? periodEndDate,
          @JsonKey(name: 'status') required final SubscriptionStatus status,
          @JsonKey(name: 'store') required final SubscriptionStore store}) =
      _$SubscriptionEntityDataImpl;

  factory SubscriptionEntityData.fromJson(Map<String, dynamic> json) =
      _$SubscriptionEntityDataImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'sku_id')
  String get skuId;
  @override
  @JsonKey(name: 'creation_date')
  DateTime? get creationDate;
  @override
  @JsonKey(name: 'last_update_date')
  DateTime? get lastUpdateDate;
  @override
  @JsonKey(name: 'period_end_date')
  DateTime? get periodEndDate;
  @override
  @JsonKey(name: 'status')
  SubscriptionStatus get status;
  @override
  @JsonKey(name: 'store')
  SubscriptionStore get store;

  /// Create a copy of SubscriptionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionEntityDataImplCopyWith<_$SubscriptionEntityDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
