// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Subscription {
  String? get skuId => throw _privateConstructorUsedError;
  DateTime? get creationDate => throw _privateConstructorUsedError;
  DateTime? get lastUpdateDate => throw _privateConstructorUsedError;
  DateTime? get periodEndDate => throw _privateConstructorUsedError;
  SubscriptionStatus get status => throw _privateConstructorUsedError;
  SubscriptionStore get store => throw _privateConstructorUsedError;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call(
      {String? skuId,
      DateTime? creationDate,
      DateTime? lastUpdateDate,
      DateTime? periodEndDate,
      SubscriptionStatus status,
      SubscriptionStore store});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skuId = freezed,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
    Object? periodEndDate = freezed,
    Object? status = null,
    Object? store = null,
  }) {
    return _then(_value.copyWith(
      skuId: freezed == skuId
          ? _value.skuId
          : skuId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$SubscriptionStateDataImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionStateDataImplCopyWith(
          _$SubscriptionStateDataImpl value,
          $Res Function(_$SubscriptionStateDataImpl) then) =
      __$$SubscriptionStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? skuId,
      DateTime? creationDate,
      DateTime? lastUpdateDate,
      DateTime? periodEndDate,
      SubscriptionStatus status,
      SubscriptionStore store});
}

/// @nodoc
class __$$SubscriptionStateDataImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionStateDataImpl>
    implements _$$SubscriptionStateDataImplCopyWith<$Res> {
  __$$SubscriptionStateDataImplCopyWithImpl(_$SubscriptionStateDataImpl _value,
      $Res Function(_$SubscriptionStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skuId = freezed,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
    Object? periodEndDate = freezed,
    Object? status = null,
    Object? store = null,
  }) {
    return _then(_$SubscriptionStateDataImpl(
      skuId: freezed == skuId
          ? _value.skuId
          : skuId // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$SubscriptionStateDataImpl extends SubscriptionStateData {
  const _$SubscriptionStateDataImpl(
      {this.skuId,
      this.creationDate,
      this.lastUpdateDate,
      this.periodEndDate,
      required this.status,
      required this.store})
      : super._();

  @override
  final String? skuId;
  @override
  final DateTime? creationDate;
  @override
  final DateTime? lastUpdateDate;
  @override
  final DateTime? periodEndDate;
  @override
  final SubscriptionStatus status;
  @override
  final SubscriptionStore store;

  @override
  String toString() {
    return 'Subscription(skuId: $skuId, creationDate: $creationDate, lastUpdateDate: $lastUpdateDate, periodEndDate: $periodEndDate, status: $status, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStateDataImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, skuId, creationDate,
      lastUpdateDate, periodEndDate, status, store);

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionStateDataImplCopyWith<_$SubscriptionStateDataImpl>
      get copyWith => __$$SubscriptionStateDataImplCopyWithImpl<
          _$SubscriptionStateDataImpl>(this, _$identity);
}

abstract class SubscriptionStateData extends Subscription {
  const factory SubscriptionStateData(
      {final String? skuId,
      final DateTime? creationDate,
      final DateTime? lastUpdateDate,
      final DateTime? periodEndDate,
      required final SubscriptionStatus status,
      required final SubscriptionStore store}) = _$SubscriptionStateDataImpl;
  const SubscriptionStateData._() : super._();

  @override
  String? get skuId;
  @override
  DateTime? get creationDate;
  @override
  DateTime? get lastUpdateDate;
  @override
  DateTime? get periodEndDate;
  @override
  SubscriptionStatus get status;
  @override
  SubscriptionStore get store;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionStateDataImplCopyWith<_$SubscriptionStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
