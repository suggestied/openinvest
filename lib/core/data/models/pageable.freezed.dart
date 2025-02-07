// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pageable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Pageable<T> {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageableCopyWith<T, Pageable<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableCopyWith<T, $Res> {
  factory $PageableCopyWith(
          Pageable<T> value, $Res Function(Pageable<T>) then) =
      _$PageableCopyWithImpl<T, $Res, Pageable<T>>;
  @useResult
  $Res call({int page, int pageSize, List<T> data});
}

/// @nodoc
class _$PageableCopyWithImpl<T, $Res, $Val extends Pageable<T>>
    implements $PageableCopyWith<T, $Res> {
  _$PageableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageableImplCopyWith<T, $Res>
    implements $PageableCopyWith<T, $Res> {
  factory _$$PageableImplCopyWith(
          _$PageableImpl<T> value, $Res Function(_$PageableImpl<T>) then) =
      __$$PageableImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int page, int pageSize, List<T> data});
}

/// @nodoc
class __$$PageableImplCopyWithImpl<T, $Res>
    extends _$PageableCopyWithImpl<T, $Res, _$PageableImpl<T>>
    implements _$$PageableImplCopyWith<T, $Res> {
  __$$PageableImplCopyWithImpl(
      _$PageableImpl<T> _value, $Res Function(_$PageableImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? data = null,
  }) {
    return _then(_$PageableImpl<T>(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$PageableImpl<T> implements _Pageable<T> {
  const _$PageableImpl(
      {required this.page, required this.pageSize, required final List<T> data})
      : _data = data;

  @override
  final int page;
  @override
  final int pageSize;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Pageable<$T>(page: $page, pageSize: $pageSize, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageableImpl<T> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, pageSize, const DeepCollectionEquality().hash(_data));

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageableImplCopyWith<T, _$PageableImpl<T>> get copyWith =>
      __$$PageableImplCopyWithImpl<T, _$PageableImpl<T>>(this, _$identity);
}

abstract class _Pageable<T> implements Pageable<T> {
  const factory _Pageable(
      {required final int page,
      required final int pageSize,
      required final List<T> data}) = _$PageableImpl<T>;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  List<T> get data;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageableImplCopyWith<T, _$PageableImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
