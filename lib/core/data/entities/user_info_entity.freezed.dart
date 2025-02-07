// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfoEntity _$UserInfoEntityFromJson(Map<String, dynamic> json) {
  return UserInfoEntityData.fromJson(json);
}

/// @nodoc
mixin _$UserInfoEntity {
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'info_key')
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'info_value')
  String get value => throw _privateConstructorUsedError;

  /// Serializes this UserInfoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoEntityCopyWith<UserInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoEntityCopyWith<$Res> {
  factory $UserInfoEntityCopyWith(
          UserInfoEntity value, $Res Function(UserInfoEntity) then) =
      _$UserInfoEntityCopyWithImpl<$Res, UserInfoEntity>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'info_key') String key,
      @JsonKey(name: 'info_value') String value});
}

/// @nodoc
class _$UserInfoEntityCopyWithImpl<$Res, $Val extends UserInfoEntity>
    implements $UserInfoEntityCopyWith<$Res> {
  _$UserInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoEntityDataImplCopyWith<$Res>
    implements $UserInfoEntityCopyWith<$Res> {
  factory _$$UserInfoEntityDataImplCopyWith(_$UserInfoEntityDataImpl value,
          $Res Function(_$UserInfoEntityDataImpl) then) =
      __$$UserInfoEntityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'info_key') String key,
      @JsonKey(name: 'info_value') String value});
}

/// @nodoc
class __$$UserInfoEntityDataImplCopyWithImpl<$Res>
    extends _$UserInfoEntityCopyWithImpl<$Res, _$UserInfoEntityDataImpl>
    implements _$$UserInfoEntityDataImplCopyWith<$Res> {
  __$$UserInfoEntityDataImplCopyWithImpl(_$UserInfoEntityDataImpl _value,
      $Res Function(_$UserInfoEntityDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$UserInfoEntityDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoEntityDataImpl implements UserInfoEntityData {
  const _$UserInfoEntityDataImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'info_key') required this.key,
      @JsonKey(name: 'info_value') required this.value});

  factory _$UserInfoEntityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoEntityDataImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'info_key')
  final String key;
  @override
  @JsonKey(name: 'info_value')
  final String value;

  @override
  String toString() {
    return 'UserInfoEntity(id: $id, userId: $userId, key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoEntityDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, key, value);

  /// Create a copy of UserInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoEntityDataImplCopyWith<_$UserInfoEntityDataImpl> get copyWith =>
      __$$UserInfoEntityDataImplCopyWithImpl<_$UserInfoEntityDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoEntityDataImplToJson(
      this,
    );
  }
}

abstract class UserInfoEntityData implements UserInfoEntity {
  const factory UserInfoEntityData(
          {@JsonKey(includeIfNull: false) final String? id,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'info_key') required final String key,
          @JsonKey(name: 'info_value') required final String value}) =
      _$UserInfoEntityDataImpl;

  factory UserInfoEntityData.fromJson(Map<String, dynamic> json) =
      _$UserInfoEntityDataImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'info_key')
  String get key;
  @override
  @JsonKey(name: 'info_value')
  String get value;

  /// Create a copy of UserInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoEntityDataImplCopyWith<_$UserInfoEntityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
