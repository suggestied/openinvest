// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceEntity _$DeviceEntityFromJson(Map<String, dynamic> json) {
  return DeviceEntityData.fromJson(json);
}

/// @nodoc
mixin _$DeviceEntity {
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_date')
  DateTime get creationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_update_date')
  DateTime get lastUpdateDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'installation_id')
  String get installationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'operatingSystem')
  OperatingSystem get operatingSystem => throw _privateConstructorUsedError;

  /// Serializes this DeviceEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceEntityCopyWith<DeviceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceEntityCopyWith<$Res> {
  factory $DeviceEntityCopyWith(
          DeviceEntity value, $Res Function(DeviceEntity) then) =
      _$DeviceEntityCopyWithImpl<$Res, DeviceEntity>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: 'creation_date') DateTime creationDate,
      @JsonKey(name: 'last_update_date') DateTime lastUpdateDate,
      @JsonKey(name: 'installation_id') String installationId,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'operatingSystem') OperatingSystem operatingSystem});
}

/// @nodoc
class _$DeviceEntityCopyWithImpl<$Res, $Val extends DeviceEntity>
    implements $DeviceEntityCopyWith<$Res> {
  _$DeviceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? creationDate = null,
    Object? lastUpdateDate = null,
    Object? installationId = null,
    Object? token = null,
    Object? operatingSystem = null,
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
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdateDate: null == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      installationId: null == installationId
          ? _value.installationId
          : installationId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      operatingSystem: null == operatingSystem
          ? _value.operatingSystem
          : operatingSystem // ignore: cast_nullable_to_non_nullable
              as OperatingSystem,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceEntityDataImplCopyWith<$Res>
    implements $DeviceEntityCopyWith<$Res> {
  factory _$$DeviceEntityDataImplCopyWith(_$DeviceEntityDataImpl value,
          $Res Function(_$DeviceEntityDataImpl) then) =
      __$$DeviceEntityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: 'creation_date') DateTime creationDate,
      @JsonKey(name: 'last_update_date') DateTime lastUpdateDate,
      @JsonKey(name: 'installation_id') String installationId,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'operatingSystem') OperatingSystem operatingSystem});
}

/// @nodoc
class __$$DeviceEntityDataImplCopyWithImpl<$Res>
    extends _$DeviceEntityCopyWithImpl<$Res, _$DeviceEntityDataImpl>
    implements _$$DeviceEntityDataImplCopyWith<$Res> {
  __$$DeviceEntityDataImplCopyWithImpl(_$DeviceEntityDataImpl _value,
      $Res Function(_$DeviceEntityDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? creationDate = null,
    Object? lastUpdateDate = null,
    Object? installationId = null,
    Object? token = null,
    Object? operatingSystem = null,
  }) {
    return _then(_$DeviceEntityDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdateDate: null == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      installationId: null == installationId
          ? _value.installationId
          : installationId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      operatingSystem: null == operatingSystem
          ? _value.operatingSystem
          : operatingSystem // ignore: cast_nullable_to_non_nullable
              as OperatingSystem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceEntityDataImpl extends DeviceEntityData {
  const _$DeviceEntityDataImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: 'creation_date') required this.creationDate,
      @JsonKey(name: 'last_update_date') required this.lastUpdateDate,
      @JsonKey(name: 'installation_id') required this.installationId,
      @JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'operatingSystem') required this.operatingSystem})
      : super._();

  factory _$DeviceEntityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceEntityDataImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: 'creation_date')
  final DateTime creationDate;
  @override
  @JsonKey(name: 'last_update_date')
  final DateTime lastUpdateDate;
  @override
  @JsonKey(name: 'installation_id')
  final String installationId;
  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'operatingSystem')
  final OperatingSystem operatingSystem;

  @override
  String toString() {
    return 'DeviceEntity(id: $id, userId: $userId, creationDate: $creationDate, lastUpdateDate: $lastUpdateDate, installationId: $installationId, token: $token, operatingSystem: $operatingSystem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceEntityDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastUpdateDate, lastUpdateDate) ||
                other.lastUpdateDate == lastUpdateDate) &&
            (identical(other.installationId, installationId) ||
                other.installationId == installationId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.operatingSystem, operatingSystem) ||
                other.operatingSystem == operatingSystem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, creationDate,
      lastUpdateDate, installationId, token, operatingSystem);

  /// Create a copy of DeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceEntityDataImplCopyWith<_$DeviceEntityDataImpl> get copyWith =>
      __$$DeviceEntityDataImplCopyWithImpl<_$DeviceEntityDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceEntityDataImplToJson(
      this,
    );
  }
}

abstract class DeviceEntityData extends DeviceEntity {
  const factory DeviceEntityData(
      {@JsonKey(includeIfNull: false) final String? id,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: 'creation_date') required final DateTime creationDate,
      @JsonKey(name: 'last_update_date') required final DateTime lastUpdateDate,
      @JsonKey(name: 'installation_id') required final String installationId,
      @JsonKey(name: 'token') required final String token,
      @JsonKey(name: 'operatingSystem')
      required final OperatingSystem operatingSystem}) = _$DeviceEntityDataImpl;
  const DeviceEntityData._() : super._();

  factory DeviceEntityData.fromJson(Map<String, dynamic> json) =
      _$DeviceEntityDataImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: 'creation_date')
  DateTime get creationDate;
  @override
  @JsonKey(name: 'last_update_date')
  DateTime get lastUpdateDate;
  @override
  @JsonKey(name: 'installation_id')
  String get installationId;
  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'operatingSystem')
  OperatingSystem get operatingSystem;

  /// Create a copy of DeviceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceEntityDataImplCopyWith<_$DeviceEntityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
