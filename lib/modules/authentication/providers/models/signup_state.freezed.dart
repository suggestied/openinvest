// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupState {
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
    TResult Function(SignupStateData value) $default, {
    required TResult Function(SignupStateSending value) sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignupStateData value)? $default, {
    TResult? Function(SignupStateSending value)? sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignupStateData value)? $default, {
    TResult Function(SignupStateSending value)? sending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupState
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
abstract class _$$SignupStateDataImplCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$SignupStateDataImplCopyWith(_$SignupStateDataImpl value,
          $Res Function(_$SignupStateDataImpl) then) =
      __$$SignupStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class __$$SignupStateDataImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupStateDataImpl>
    implements _$$SignupStateDataImplCopyWith<$Res> {
  __$$SignupStateDataImplCopyWithImpl(
      _$SignupStateDataImpl _value, $Res Function(_$SignupStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignupStateDataImpl(
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

class _$SignupStateDataImpl extends SignupStateData {
  const _$SignupStateDataImpl({required this.email, required this.password})
      : super._();

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignupState(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateDataImplCopyWith<_$SignupStateDataImpl> get copyWith =>
      __$$SignupStateDataImplCopyWithImpl<_$SignupStateDataImpl>(
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
    TResult Function(SignupStateData value) $default, {
    required TResult Function(SignupStateSending value) sending,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignupStateData value)? $default, {
    TResult? Function(SignupStateSending value)? sending,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignupStateData value)? $default, {
    TResult Function(SignupStateSending value)? sending,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignupStateData extends SignupState {
  const factory SignupStateData(
      {required final Email email,
      required final Password password}) = _$SignupStateDataImpl;
  const SignupStateData._() : super._();

  @override
  Email get email;
  @override
  Password get password;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupStateDataImplCopyWith<_$SignupStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupStateSendingImplCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$SignupStateSendingImplCopyWith(_$SignupStateSendingImpl value,
          $Res Function(_$SignupStateSendingImpl) then) =
      __$$SignupStateSendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, Password password});
}

/// @nodoc
class __$$SignupStateSendingImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupStateSendingImpl>
    implements _$$SignupStateSendingImplCopyWith<$Res> {
  __$$SignupStateSendingImplCopyWithImpl(_$SignupStateSendingImpl _value,
      $Res Function(_$SignupStateSendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignupStateSendingImpl(
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

class _$SignupStateSendingImpl extends SignupStateSending {
  const _$SignupStateSendingImpl({required this.email, required this.password})
      : super._();

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignupState.sending(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateSendingImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateSendingImplCopyWith<_$SignupStateSendingImpl> get copyWith =>
      __$$SignupStateSendingImplCopyWithImpl<_$SignupStateSendingImpl>(
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
    TResult Function(SignupStateData value) $default, {
    required TResult Function(SignupStateSending value) sending,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignupStateData value)? $default, {
    TResult? Function(SignupStateSending value)? sending,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignupStateData value)? $default, {
    TResult Function(SignupStateSending value)? sending,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class SignupStateSending extends SignupState {
  const factory SignupStateSending(
      {required final Email email,
      required final Password password}) = _$SignupStateSendingImpl;
  const SignupStateSending._() : super._();

  @override
  Email get email;
  @override
  Password get password;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupStateSendingImplCopyWith<_$SignupStateSendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
