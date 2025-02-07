// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'environnements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Environment {
// Name of the environment (dev, prod, ...) just for debug purpose
  String get name => throw _privateConstructorUsedError;

  /// Url of your backend API / or Supabase URL / or Firebase Functions region
  String get backendUrl => throw _privateConstructorUsedError;
  List<String> get notificationsTopicChannels =>
      throw _privateConstructorUsedError;

  /// The default authentication mode of the app (anonymous or authRequired)
  /// See [AuthenticationMode]
  AuthenticationMode get authenticationMode =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            AuthenticationMode authenticationMode)
        dev,
    required TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            String? sentryDsn,
            AuthenticationMode authenticationMode)
        prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            AuthenticationMode authenticationMode)?
        dev,
    TResult? Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            String? sentryDsn,
            AuthenticationMode authenticationMode)?
        prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            AuthenticationMode authenticationMode)?
        dev,
    TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            String? sentryDsn,
            AuthenticationMode authenticationMode)?
        prod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DevEnvironment value) dev,
    required TResult Function(ProdEnvironment value) prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DevEnvironment value)? dev,
    TResult? Function(ProdEnvironment value)? prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DevEnvironment value)? dev,
    TResult Function(ProdEnvironment value)? prod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnvironmentCopyWith<Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res, Environment>;
  @useResult
  $Res call(
      {String name,
      String backendUrl,
      List<String> notificationsTopicChannels,
      AuthenticationMode authenticationMode});
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res, $Val extends Environment>
    implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backendUrl = null,
    Object? notificationsTopicChannels = null,
    Object? authenticationMode = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backendUrl: null == backendUrl
          ? _value.backendUrl
          : backendUrl // ignore: cast_nullable_to_non_nullable
              as String,
      notificationsTopicChannels: null == notificationsTopicChannels
          ? _value.notificationsTopicChannels
          : notificationsTopicChannels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authenticationMode: null == authenticationMode
          ? _value.authenticationMode
          : authenticationMode // ignore: cast_nullable_to_non_nullable
              as AuthenticationMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DevEnvironmentImplCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$DevEnvironmentImplCopyWith(_$DevEnvironmentImpl value,
          $Res Function(_$DevEnvironmentImpl) then) =
      __$$DevEnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String backendUrl,
      List<String> notificationsTopicChannels,
      AuthenticationMode authenticationMode});
}

/// @nodoc
class __$$DevEnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$DevEnvironmentImpl>
    implements _$$DevEnvironmentImplCopyWith<$Res> {
  __$$DevEnvironmentImplCopyWithImpl(
      _$DevEnvironmentImpl _value, $Res Function(_$DevEnvironmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backendUrl = null,
    Object? notificationsTopicChannels = null,
    Object? authenticationMode = null,
  }) {
    return _then(_$DevEnvironmentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backendUrl: null == backendUrl
          ? _value.backendUrl
          : backendUrl // ignore: cast_nullable_to_non_nullable
              as String,
      notificationsTopicChannels: null == notificationsTopicChannels
          ? _value._notificationsTopicChannels
          : notificationsTopicChannels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authenticationMode: null == authenticationMode
          ? _value.authenticationMode
          : authenticationMode // ignore: cast_nullable_to_non_nullable
              as AuthenticationMode,
    ));
  }
}

/// @nodoc

class _$DevEnvironmentImpl extends DevEnvironment {
  const _$DevEnvironmentImpl(
      {required this.name,
      required this.backendUrl,
      required final List<String> notificationsTopicChannels,
      required this.authenticationMode})
      : _notificationsTopicChannels = notificationsTopicChannels,
        super._();

// Name of the environment (dev, prod, ...) just for debug purpose
  @override
  final String name;

  /// Url of your backend API / or Supabase URL / or Firebase Functions region
  @override
  final String backendUrl;
  final List<String> _notificationsTopicChannels;
  @override
  List<String> get notificationsTopicChannels {
    if (_notificationsTopicChannels is EqualUnmodifiableListView)
      return _notificationsTopicChannels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationsTopicChannels);
  }

  /// The default authentication mode of the app (anonymous or authRequired)
  /// See [AuthenticationMode]
  @override
  final AuthenticationMode authenticationMode;

  @override
  String toString() {
    return 'Environment.dev(name: $name, backendUrl: $backendUrl, notificationsTopicChannels: $notificationsTopicChannels, authenticationMode: $authenticationMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevEnvironmentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backendUrl, backendUrl) ||
                other.backendUrl == backendUrl) &&
            const DeepCollectionEquality().equals(
                other._notificationsTopicChannels,
                _notificationsTopicChannels) &&
            (identical(other.authenticationMode, authenticationMode) ||
                other.authenticationMode == authenticationMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      backendUrl,
      const DeepCollectionEquality().hash(_notificationsTopicChannels),
      authenticationMode);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevEnvironmentImplCopyWith<_$DevEnvironmentImpl> get copyWith =>
      __$$DevEnvironmentImplCopyWithImpl<_$DevEnvironmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            AuthenticationMode authenticationMode)
        dev,
    required TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            String? sentryDsn,
            AuthenticationMode authenticationMode)
        prod,
  }) {
    return dev(
        name, backendUrl, notificationsTopicChannels, authenticationMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            AuthenticationMode authenticationMode)?
        dev,
    TResult? Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            String? sentryDsn,
            AuthenticationMode authenticationMode)?
        prod,
  }) {
    return dev?.call(
        name, backendUrl, notificationsTopicChannels, authenticationMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            AuthenticationMode authenticationMode)?
        dev,
    TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            String? sentryDsn,
            AuthenticationMode authenticationMode)?
        prod,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev(
          name, backendUrl, notificationsTopicChannels, authenticationMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DevEnvironment value) dev,
    required TResult Function(ProdEnvironment value) prod,
  }) {
    return dev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DevEnvironment value)? dev,
    TResult? Function(ProdEnvironment value)? prod,
  }) {
    return dev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DevEnvironment value)? dev,
    TResult Function(ProdEnvironment value)? prod,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev(this);
    }
    return orElse();
  }
}

abstract class DevEnvironment extends Environment {
  const factory DevEnvironment(
          {required final String name,
          required final String backendUrl,
          required final List<String> notificationsTopicChannels,
          required final AuthenticationMode authenticationMode}) =
      _$DevEnvironmentImpl;
  const DevEnvironment._() : super._();

// Name of the environment (dev, prod, ...) just for debug purpose
  @override
  String get name;

  /// Url of your backend API / or Supabase URL / or Firebase Functions region
  @override
  String get backendUrl;
  @override
  List<String> get notificationsTopicChannels;

  /// The default authentication mode of the app (anonymous or authRequired)
  /// See [AuthenticationMode]
  @override
  AuthenticationMode get authenticationMode;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevEnvironmentImplCopyWith<_$DevEnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProdEnvironmentImplCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$ProdEnvironmentImplCopyWith(_$ProdEnvironmentImpl value,
          $Res Function(_$ProdEnvironmentImpl) then) =
      __$$ProdEnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String backendUrl,
      List<String> notificationsTopicChannels,
      String? sentryDsn,
      AuthenticationMode authenticationMode});
}

/// @nodoc
class __$$ProdEnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$ProdEnvironmentImpl>
    implements _$$ProdEnvironmentImplCopyWith<$Res> {
  __$$ProdEnvironmentImplCopyWithImpl(
      _$ProdEnvironmentImpl _value, $Res Function(_$ProdEnvironmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backendUrl = null,
    Object? notificationsTopicChannels = null,
    Object? sentryDsn = freezed,
    Object? authenticationMode = null,
  }) {
    return _then(_$ProdEnvironmentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backendUrl: null == backendUrl
          ? _value.backendUrl
          : backendUrl // ignore: cast_nullable_to_non_nullable
              as String,
      notificationsTopicChannels: null == notificationsTopicChannels
          ? _value._notificationsTopicChannels
          : notificationsTopicChannels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentryDsn: freezed == sentryDsn
          ? _value.sentryDsn
          : sentryDsn // ignore: cast_nullable_to_non_nullable
              as String?,
      authenticationMode: null == authenticationMode
          ? _value.authenticationMode
          : authenticationMode // ignore: cast_nullable_to_non_nullable
              as AuthenticationMode,
    ));
  }
}

/// @nodoc

class _$ProdEnvironmentImpl extends ProdEnvironment {
  const _$ProdEnvironmentImpl(
      {required this.name,
      required this.backendUrl,
      required final List<String> notificationsTopicChannels,
      this.sentryDsn,
      required this.authenticationMode})
      : _notificationsTopicChannels = notificationsTopicChannels,
        super._();

  @override
  final String name;

  /// Url of your backend API / or Supabase URL / or Firebase Functions region
  @override
  final String backendUrl;
  final List<String> _notificationsTopicChannels;
  @override
  List<String> get notificationsTopicChannels {
    if (_notificationsTopicChannels is EqualUnmodifiableListView)
      return _notificationsTopicChannels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationsTopicChannels);
  }

  /// Sentry is an error reporting tool that will help you to track errors in production
  /// You can get it from https://sentry.io
  /// by default sentry will read the SENTRY_DSN environment variable except for web
  /// you can also setup it directly here. Prefer using environment variables
  @override
  final String? sentryDsn;

  /// The default authentication mode of the app (anonymous or authRequired)
  /// See [AuthenticationMode]
  @override
  final AuthenticationMode authenticationMode;

  @override
  String toString() {
    return 'Environment.prod(name: $name, backendUrl: $backendUrl, notificationsTopicChannels: $notificationsTopicChannels, sentryDsn: $sentryDsn, authenticationMode: $authenticationMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProdEnvironmentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backendUrl, backendUrl) ||
                other.backendUrl == backendUrl) &&
            const DeepCollectionEquality().equals(
                other._notificationsTopicChannels,
                _notificationsTopicChannels) &&
            (identical(other.sentryDsn, sentryDsn) ||
                other.sentryDsn == sentryDsn) &&
            (identical(other.authenticationMode, authenticationMode) ||
                other.authenticationMode == authenticationMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      backendUrl,
      const DeepCollectionEquality().hash(_notificationsTopicChannels),
      sentryDsn,
      authenticationMode);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProdEnvironmentImplCopyWith<_$ProdEnvironmentImpl> get copyWith =>
      __$$ProdEnvironmentImplCopyWithImpl<_$ProdEnvironmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            AuthenticationMode authenticationMode)
        dev,
    required TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            String? sentryDsn,
            AuthenticationMode authenticationMode)
        prod,
  }) {
    return prod(name, backendUrl, notificationsTopicChannels, sentryDsn,
        authenticationMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            AuthenticationMode authenticationMode)?
        dev,
    TResult? Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            String? sentryDsn,
            AuthenticationMode authenticationMode)?
        prod,
  }) {
    return prod?.call(name, backendUrl, notificationsTopicChannels, sentryDsn,
        authenticationMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            AuthenticationMode authenticationMode)?
        dev,
    TResult Function(
            String name,
            String backendUrl,
            List<String> notificationsTopicChannels,
            String? sentryDsn,
            AuthenticationMode authenticationMode)?
        prod,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod(name, backendUrl, notificationsTopicChannels, sentryDsn,
          authenticationMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DevEnvironment value) dev,
    required TResult Function(ProdEnvironment value) prod,
  }) {
    return prod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DevEnvironment value)? dev,
    TResult? Function(ProdEnvironment value)? prod,
  }) {
    return prod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DevEnvironment value)? dev,
    TResult Function(ProdEnvironment value)? prod,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod(this);
    }
    return orElse();
  }
}

abstract class ProdEnvironment extends Environment {
  const factory ProdEnvironment(
          {required final String name,
          required final String backendUrl,
          required final List<String> notificationsTopicChannels,
          final String? sentryDsn,
          required final AuthenticationMode authenticationMode}) =
      _$ProdEnvironmentImpl;
  const ProdEnvironment._() : super._();

  @override
  String get name;

  /// Url of your backend API / or Supabase URL / or Firebase Functions region
  @override
  String get backendUrl;
  @override
  List<String> get notificationsTopicChannels;

  /// Sentry is an error reporting tool that will help you to track errors in production
  /// You can get it from https://sentry.io
  /// by default sentry will read the SENTRY_DSN environment variable except for web
  /// you can also setup it directly here. Prefer using environment variables
  String? get sentryDsn;

  /// The default authentication mode of the app (anonymous or authRequired)
  /// See [AuthenticationMode]
  @override
  AuthenticationMode get authenticationMode;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProdEnvironmentImplCopyWith<_$ProdEnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
