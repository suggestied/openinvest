// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return UserEntityData.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_date')
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_update_date')
  DateTime? get lastUpdateDate => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarPath => throw _privateConstructorUsedError;
  bool? get onboarded => throw _privateConstructorUsedError;

  /// Serializes this UserEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(name: 'creation_date') DateTime? creationDate,
      @JsonKey(name: 'last_update_date') DateTime? lastUpdateDate,
      String? email,
      String? name,
      @JsonKey(name: 'avatar_url') String? avatarPath,
      bool? onboarded});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? avatarPath = freezed,
    Object? onboarded = freezed,
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
      lastUpdateDate: freezed == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      onboarded: freezed == onboarded
          ? _value.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntityDataImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityDataImplCopyWith(_$UserEntityDataImpl value,
          $Res Function(_$UserEntityDataImpl) then) =
      __$$UserEntityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(name: 'creation_date') DateTime? creationDate,
      @JsonKey(name: 'last_update_date') DateTime? lastUpdateDate,
      String? email,
      String? name,
      @JsonKey(name: 'avatar_url') String? avatarPath,
      bool? onboarded});
}

/// @nodoc
class __$$UserEntityDataImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityDataImpl>
    implements _$$UserEntityDataImplCopyWith<$Res> {
  __$$UserEntityDataImplCopyWithImpl(
      _$UserEntityDataImpl _value, $Res Function(_$UserEntityDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? avatarPath = freezed,
    Object? onboarded = freezed,
  }) {
    return _then(_$UserEntityDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdateDate: freezed == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      onboarded: freezed == onboarded
          ? _value.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEntityDataImpl extends UserEntityData {
  const _$UserEntityDataImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(name: 'creation_date') this.creationDate,
      @JsonKey(name: 'last_update_date') this.lastUpdateDate,
      this.email,
      this.name,
      @JsonKey(name: 'avatar_url') this.avatarPath,
      this.onboarded})
      : super._();

  factory _$UserEntityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEntityDataImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(name: 'creation_date')
  final DateTime? creationDate;
  @override
  @JsonKey(name: 'last_update_date')
  final DateTime? lastUpdateDate;
  @override
  final String? email;
  @override
  final String? name;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarPath;
  @override
  final bool? onboarded;

  @override
  String toString() {
    return 'UserEntity(id: $id, creationDate: $creationDate, lastUpdateDate: $lastUpdateDate, email: $email, name: $name, avatarPath: $avatarPath, onboarded: $onboarded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastUpdateDate, lastUpdateDate) ||
                other.lastUpdateDate == lastUpdateDate) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath) &&
            (identical(other.onboarded, onboarded) ||
                other.onboarded == onboarded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, creationDate, lastUpdateDate,
      email, name, avatarPath, onboarded);

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityDataImplCopyWith<_$UserEntityDataImpl> get copyWith =>
      __$$UserEntityDataImplCopyWithImpl<_$UserEntityDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEntityDataImplToJson(
      this,
    );
  }
}

abstract class UserEntityData extends UserEntity {
  const factory UserEntityData(
      {@JsonKey(includeIfNull: false) final String? id,
      @JsonKey(name: 'creation_date') final DateTime? creationDate,
      @JsonKey(name: 'last_update_date') final DateTime? lastUpdateDate,
      final String? email,
      final String? name,
      @JsonKey(name: 'avatar_url') final String? avatarPath,
      final bool? onboarded}) = _$UserEntityDataImpl;
  const UserEntityData._() : super._();

  factory UserEntityData.fromJson(Map<String, dynamic> json) =
      _$UserEntityDataImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get id;
  @override
  @JsonKey(name: 'creation_date')
  DateTime? get creationDate;
  @override
  @JsonKey(name: 'last_update_date')
  DateTime? get lastUpdateDate;
  @override
  String? get email;
  @override
  String? get name;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarPath;
  @override
  bool? get onboarded;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserEntityDataImplCopyWith<_$UserEntityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
