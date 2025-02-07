// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecoverState {
  Email get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Email email) $default, {
    required TResult Function(Email email) sending,
    required TResult Function(Email email) sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Email email)? $default, {
    TResult? Function(Email email)? sending,
    TResult? Function(Email email)? sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Email email)? $default, {
    TResult Function(Email email)? sending,
    TResult Function(Email email)? sent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RecoverStateData value) $default, {
    required TResult Function(RecoverStateSending value) sending,
    required TResult Function(RecoverStateSent value) sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RecoverStateData value)? $default, {
    TResult? Function(RecoverStateSending value)? sending,
    TResult? Function(RecoverStateSent value)? sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RecoverStateData value)? $default, {
    TResult Function(RecoverStateSending value)? sending,
    TResult Function(RecoverStateSent value)? sent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecoverStateCopyWith<RecoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverStateCopyWith<$Res> {
  factory $RecoverStateCopyWith(
          RecoverState value, $Res Function(RecoverState) then) =
      _$RecoverStateCopyWithImpl<$Res, RecoverState>;
  @useResult
  $Res call({Email email});
}

/// @nodoc
class _$RecoverStateCopyWithImpl<$Res, $Val extends RecoverState>
    implements $RecoverStateCopyWith<$Res> {
  _$RecoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecoverStateDataImplCopyWith<$Res>
    implements $RecoverStateCopyWith<$Res> {
  factory _$$RecoverStateDataImplCopyWith(_$RecoverStateDataImpl value,
          $Res Function(_$RecoverStateDataImpl) then) =
      __$$RecoverStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email});
}

/// @nodoc
class __$$RecoverStateDataImplCopyWithImpl<$Res>
    extends _$RecoverStateCopyWithImpl<$Res, _$RecoverStateDataImpl>
    implements _$$RecoverStateDataImplCopyWith<$Res> {
  __$$RecoverStateDataImplCopyWithImpl(_$RecoverStateDataImpl _value,
      $Res Function(_$RecoverStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RecoverStateDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc

class _$RecoverStateDataImpl extends RecoverStateData {
  const _$RecoverStateDataImpl({required this.email}) : super._();

  @override
  final Email email;

  @override
  String toString() {
    return 'RecoverState(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoverStateDataImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoverStateDataImplCopyWith<_$RecoverStateDataImpl> get copyWith =>
      __$$RecoverStateDataImplCopyWithImpl<_$RecoverStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Email email) $default, {
    required TResult Function(Email email) sending,
    required TResult Function(Email email) sent,
  }) {
    return $default(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Email email)? $default, {
    TResult? Function(Email email)? sending,
    TResult? Function(Email email)? sent,
  }) {
    return $default?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Email email)? $default, {
    TResult Function(Email email)? sending,
    TResult Function(Email email)? sent,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RecoverStateData value) $default, {
    required TResult Function(RecoverStateSending value) sending,
    required TResult Function(RecoverStateSent value) sent,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RecoverStateData value)? $default, {
    TResult? Function(RecoverStateSending value)? sending,
    TResult? Function(RecoverStateSent value)? sent,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RecoverStateData value)? $default, {
    TResult Function(RecoverStateSending value)? sending,
    TResult Function(RecoverStateSent value)? sent,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RecoverStateData extends RecoverState {
  const factory RecoverStateData({required final Email email}) =
      _$RecoverStateDataImpl;
  const RecoverStateData._() : super._();

  @override
  Email get email;

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecoverStateDataImplCopyWith<_$RecoverStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecoverStateSendingImplCopyWith<$Res>
    implements $RecoverStateCopyWith<$Res> {
  factory _$$RecoverStateSendingImplCopyWith(_$RecoverStateSendingImpl value,
          $Res Function(_$RecoverStateSendingImpl) then) =
      __$$RecoverStateSendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email});
}

/// @nodoc
class __$$RecoverStateSendingImplCopyWithImpl<$Res>
    extends _$RecoverStateCopyWithImpl<$Res, _$RecoverStateSendingImpl>
    implements _$$RecoverStateSendingImplCopyWith<$Res> {
  __$$RecoverStateSendingImplCopyWithImpl(_$RecoverStateSendingImpl _value,
      $Res Function(_$RecoverStateSendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RecoverStateSendingImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc

class _$RecoverStateSendingImpl extends RecoverStateSending {
  const _$RecoverStateSendingImpl({required this.email}) : super._();

  @override
  final Email email;

  @override
  String toString() {
    return 'RecoverState.sending(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoverStateSendingImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoverStateSendingImplCopyWith<_$RecoverStateSendingImpl> get copyWith =>
      __$$RecoverStateSendingImplCopyWithImpl<_$RecoverStateSendingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Email email) $default, {
    required TResult Function(Email email) sending,
    required TResult Function(Email email) sent,
  }) {
    return sending(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Email email)? $default, {
    TResult? Function(Email email)? sending,
    TResult? Function(Email email)? sent,
  }) {
    return sending?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Email email)? $default, {
    TResult Function(Email email)? sending,
    TResult Function(Email email)? sent,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RecoverStateData value) $default, {
    required TResult Function(RecoverStateSending value) sending,
    required TResult Function(RecoverStateSent value) sent,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RecoverStateData value)? $default, {
    TResult? Function(RecoverStateSending value)? sending,
    TResult? Function(RecoverStateSent value)? sent,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RecoverStateData value)? $default, {
    TResult Function(RecoverStateSending value)? sending,
    TResult Function(RecoverStateSent value)? sent,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class RecoverStateSending extends RecoverState {
  const factory RecoverStateSending({required final Email email}) =
      _$RecoverStateSendingImpl;
  const RecoverStateSending._() : super._();

  @override
  Email get email;

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecoverStateSendingImplCopyWith<_$RecoverStateSendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecoverStateSentImplCopyWith<$Res>
    implements $RecoverStateCopyWith<$Res> {
  factory _$$RecoverStateSentImplCopyWith(_$RecoverStateSentImpl value,
          $Res Function(_$RecoverStateSentImpl) then) =
      __$$RecoverStateSentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email});
}

/// @nodoc
class __$$RecoverStateSentImplCopyWithImpl<$Res>
    extends _$RecoverStateCopyWithImpl<$Res, _$RecoverStateSentImpl>
    implements _$$RecoverStateSentImplCopyWith<$Res> {
  __$$RecoverStateSentImplCopyWithImpl(_$RecoverStateSentImpl _value,
      $Res Function(_$RecoverStateSentImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RecoverStateSentImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc

class _$RecoverStateSentImpl extends RecoverStateSent {
  const _$RecoverStateSentImpl({required this.email}) : super._();

  @override
  final Email email;

  @override
  String toString() {
    return 'RecoverState.sent(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoverStateSentImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoverStateSentImplCopyWith<_$RecoverStateSentImpl> get copyWith =>
      __$$RecoverStateSentImplCopyWithImpl<_$RecoverStateSentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Email email) $default, {
    required TResult Function(Email email) sending,
    required TResult Function(Email email) sent,
  }) {
    return sent(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Email email)? $default, {
    TResult? Function(Email email)? sending,
    TResult? Function(Email email)? sent,
  }) {
    return sent?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Email email)? $default, {
    TResult Function(Email email)? sending,
    TResult Function(Email email)? sent,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RecoverStateData value) $default, {
    required TResult Function(RecoverStateSending value) sending,
    required TResult Function(RecoverStateSent value) sent,
  }) {
    return sent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RecoverStateData value)? $default, {
    TResult? Function(RecoverStateSending value)? sending,
    TResult? Function(RecoverStateSent value)? sent,
  }) {
    return sent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RecoverStateData value)? $default, {
    TResult Function(RecoverStateSending value)? sending,
    TResult Function(RecoverStateSent value)? sent,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(this);
    }
    return orElse();
  }
}

abstract class RecoverStateSent extends RecoverState {
  const factory RecoverStateSent({required final Email email}) =
      _$RecoverStateSentImpl;
  const RecoverStateSent._() : super._();

  @override
  Email get email;

  /// Create a copy of RecoverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecoverStateSentImplCopyWith<_$RecoverStateSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
