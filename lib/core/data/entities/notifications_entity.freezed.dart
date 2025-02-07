// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationEntity _$NotificationEntityFromJson(Map<String, dynamic> json) {
  return NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationEntity {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_date')
  DateTime get creationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'read_date')
  DateTime? get readDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  NotificationTypes? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  /// Serializes this NotificationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationEntityCopyWith<NotificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEntityCopyWith<$Res> {
  factory $NotificationEntityCopyWith(
          NotificationEntity value, $Res Function(NotificationEntity) then) =
      _$NotificationEntityCopyWithImpl<$Res, NotificationEntity>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'creation_date') DateTime creationDate,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'read_date') DateTime? readDate,
      @JsonKey(name: 'type') NotificationTypes? type,
      @JsonKey(name: 'data') Map<String, dynamic>? data});
}

/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res, $Val extends NotificationEntity>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = null,
    Object? creationDate = null,
    Object? body = null,
    Object? readDate = freezed,
    Object? type = freezed,
    Object? data = freezed,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      readDate: freezed == readDate
          ? _value.readDate
          : readDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationTypes?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDataImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$NotificationDataImplCopyWith(_$NotificationDataImpl value,
          $Res Function(_$NotificationDataImpl) then) =
      __$$NotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'creation_date') DateTime creationDate,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'read_date') DateTime? readDate,
      @JsonKey(name: 'type') NotificationTypes? type,
      @JsonKey(name: 'data') Map<String, dynamic>? data});
}

/// @nodoc
class __$$NotificationDataImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res, _$NotificationDataImpl>
    implements _$$NotificationDataImplCopyWith<$Res> {
  __$$NotificationDataImplCopyWithImpl(_$NotificationDataImpl _value,
      $Res Function(_$NotificationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = null,
    Object? creationDate = null,
    Object? body = null,
    Object? readDate = freezed,
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NotificationDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      readDate: freezed == readDate
          ? _value.readDate
          : readDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationTypes?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataImpl implements NotificationData {
  const _$NotificationDataImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'creation_date') required this.creationDate,
      @JsonKey(name: 'body') required this.body,
      @JsonKey(name: 'read_date') this.readDate,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'data') final Map<String, dynamic>? data})
      : _data = data;

  factory _$NotificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'creation_date')
  final DateTime creationDate;
  @override
  @JsonKey(name: 'body')
  final String body;
  @override
  @JsonKey(name: 'read_date')
  final DateTime? readDate;
  @override
  @JsonKey(name: 'type')
  final NotificationTypes? type;
  final Map<String, dynamic>? _data;
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'NotificationEntity(id: $id, userId: $userId, title: $title, creationDate: $creationDate, body: $body, readDate: $readDate, type: $type, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.readDate, readDate) ||
                other.readDate == readDate) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, creationDate,
      body, readDate, type, const DeepCollectionEquality().hash(_data));

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      __$$NotificationDataImplCopyWithImpl<_$NotificationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataImplToJson(
      this,
    );
  }
}

abstract class NotificationData implements NotificationEntity {
  const factory NotificationData(
          {final String? id,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'creation_date') required final DateTime creationDate,
          @JsonKey(name: 'body') required final String body,
          @JsonKey(name: 'read_date') final DateTime? readDate,
          @JsonKey(name: 'type') final NotificationTypes? type,
          @JsonKey(name: 'data') final Map<String, dynamic>? data}) =
      _$NotificationDataImpl;

  factory NotificationData.fromJson(Map<String, dynamic> json) =
      _$NotificationDataImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'creation_date')
  DateTime get creationDate;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(name: 'read_date')
  DateTime? get readDate;
  @override
  @JsonKey(name: 'type')
  NotificationTypes? get type;
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
