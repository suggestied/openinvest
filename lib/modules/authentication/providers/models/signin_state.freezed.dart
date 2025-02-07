// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SigninState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Email email, Password password) $default, {
    required TResult Function(Email email, Password password) sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Email email, Password password)? $default, {
    TResult? Function(Email email, Password password)? sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Email email, Password password)? $default, {
    TResult Function(Email email, Password password)? sending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SigninStateData value) $default, {
    required TResult Function(SigninStateSending value) sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SigninStateData value)? $default, {
    TResult? Function(SigninStateSending value)? sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SigninStateData value)? $default, {
    TResult Function(SigninStateSending value)? sending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res, SigninState>;
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res, $Val extends SigninState>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninStateDataImplCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$SigninStateDataImplCopyWith(_$SigninStateDataImpl value,
          $Res Function(_$SigninStateDataImpl) then) =
      __$$SigninStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class __$$SigninStateDataImplCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$SigninStateDataImpl>
    implements _$$SigninStateDataImplCopyWith<$Res> {
  __$$SigninStateDataImplCopyWithImpl(
      _$SigninStateDataImpl _value, $Res Function(_$SigninStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SigninStateDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$SigninStateDataImpl extends SigninStateData {
  const _$SigninStateDataImpl({required this.email, required this.password})
      : super._();

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'SigninState(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninStateDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninStateDataImplCopyWith<_$SigninStateDataImpl> get copyWith =>
      __$$SigninStateDataImplCopyWithImpl<_$SigninStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Email email, Password password) $default, {
    required TResult Function(Email email, Password password) sending,
  }) {
    return $default(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Email email, Password password)? $default, {
    TResult? Function(Email email, Password password)? sending,
  }) {
    return $default?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Email email, Password password)? $default, {
    TResult Function(Email email, Password password)? sending,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SigninStateData value) $default, {
    required TResult Function(SigninStateSending value) sending,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SigninStateData value)? $default, {
    TResult? Function(SigninStateSending value)? sending,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SigninStateData value)? $default, {
    TResult Function(SigninStateSending value)? sending,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SigninStateData extends SigninState {
  const factory SigninStateData(
      {required final Email email,
      required final Password password}) = _$SigninStateDataImpl;
  const SigninStateData._() : super._();

  @override
  Email get email;
  @override
  Password get password;

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninStateDataImplCopyWith<_$SigninStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SigninStateSendingImplCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$SigninStateSendingImplCopyWith(_$SigninStateSendingImpl value,
          $Res Function(_$SigninStateSendingImpl) then) =
      __$$SigninStateSendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class __$$SigninStateSendingImplCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$SigninStateSendingImpl>
    implements _$$SigninStateSendingImplCopyWith<$Res> {
  __$$SigninStateSendingImplCopyWithImpl(_$SigninStateSendingImpl _value,
      $Res Function(_$SigninStateSendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SigninStateSendingImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$SigninStateSendingImpl extends SigninStateSending {
  const _$SigninStateSendingImpl({required this.email, required this.password})
      : super._();

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'SigninState.sending(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninStateSendingImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninStateSendingImplCopyWith<_$SigninStateSendingImpl> get copyWith =>
      __$$SigninStateSendingImplCopyWithImpl<_$SigninStateSendingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Email email, Password password) $default, {
    required TResult Function(Email email, Password password) sending,
  }) {
    return sending(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Email email, Password password)? $default, {
    TResult? Function(Email email, Password password)? sending,
  }) {
    return sending?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Email email, Password password)? $default, {
    TResult Function(Email email, Password password)? sending,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SigninStateData value) $default, {
    required TResult Function(SigninStateSending value) sending,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SigninStateData value)? $default, {
    TResult? Function(SigninStateSending value)? sending,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SigninStateData value)? $default, {
    TResult Function(SigninStateSending value)? sending,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class SigninStateSending extends SigninState {
  const factory SigninStateSending(
      {required final Email email,
      required final Password password}) = _$SigninStateSendingImpl;
  const SigninStateSending._() : super._();

  @override
  Email get email;
  @override
  Password get password;

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninStateSendingImplCopyWith<_$SigninStateSendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
