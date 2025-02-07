// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Device {
  String? get id => throw _privateConstructorUsedError;
  String get installationId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  OperatingSystem get platform => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res, Device>;
  @useResult
  $Res call(
      {String? id,
      String installationId,
      String token,
      OperatingSystem platform,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res, $Val extends Device>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? installationId = null,
    Object? token = null,
    Object? platform = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      installationId: null == installationId
          ? _value.installationId
          : installationId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as OperatingSystem,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDataImplCopyWith<$Res>
    implements $DeviceCopyWith<$Res> {
  factory _$$DeviceDataImplCopyWith(
          _$DeviceDataImpl value, $Res Function(_$DeviceDataImpl) then) =
      __$$DeviceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String installationId,
      String token,
      OperatingSystem platform,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$DeviceDataImplCopyWithImpl<$Res>
    extends _$DeviceCopyWithImpl<$Res, _$DeviceDataImpl>
    implements _$$DeviceDataImplCopyWith<$Res> {
  __$$DeviceDataImplCopyWithImpl(
      _$DeviceDataImpl _value, $Res Function(_$DeviceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? installationId = null,
    Object? token = null,
    Object? platform = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DeviceDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      installationId: null == installationId
          ? _value.installationId
          : installationId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as OperatingSystem,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DeviceDataImpl implements _DeviceData {
  const _$DeviceDataImpl(
      {this.id,
      required this.installationId,
      required this.token,
      required this.platform,
      required this.createdAt,
      required this.updatedAt});

  @override
  final String? id;
  @override
  final String installationId;
  @override
  final String token;
  @override
  final OperatingSystem platform;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Device(id: $id, installationId: $installationId, token: $token, platform: $platform, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.installationId, installationId) ||
                other.installationId == installationId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, installationId, token, platform, createdAt, updatedAt);

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDataImplCopyWith<_$DeviceDataImpl> get copyWith =>
      __$$DeviceDataImplCopyWithImpl<_$DeviceDataImpl>(this, _$identity);
}

abstract class _DeviceData implements Device {
  const factory _DeviceData(
      {final String? id,
      required final String installationId,
      required final String token,
      required final OperatingSystem platform,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$DeviceDataImpl;

  @override
  String? get id;
  @override
  String get installationId;
  @override
  String get token;
  @override
  OperatingSystem get platform;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceDataImplCopyWith<_$DeviceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
