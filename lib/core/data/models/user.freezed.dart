// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)
        authenticated,
    required TResult Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)
        anonymous,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)?
        authenticated,
    TResult? Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)?
        anonymous,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)?
        authenticated,
    TResult Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)?
        anonymous,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUserData value) authenticated,
    required TResult Function(AnonymousUserData value) anonymous,
    required TResult Function(LoadingUserData value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUserData value)? authenticated,
    TResult? Function(AnonymousUserData value)? anonymous,
    TResult? Function(LoadingUserData value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUserData value)? authenticated,
    TResult Function(AnonymousUserData value)? anonymous,
    TResult Function(LoadingUserData value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthenticatedUserDataImplCopyWith<$Res> {
  factory _$$AuthenticatedUserDataImplCopyWith(
          _$AuthenticatedUserDataImpl value,
          $Res Function(_$AuthenticatedUserDataImpl) then) =
      __$$AuthenticatedUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String? name,
      String? id,
      DateTime? creationDate,
      DateTime? lastUpdateDate,
      String? avatarPath,
      bool onboarded,
      Subscription? subscription});

  $SubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$$AuthenticatedUserDataImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$AuthenticatedUserDataImpl>
    implements _$$AuthenticatedUserDataImplCopyWith<$Res> {
  __$$AuthenticatedUserDataImplCopyWithImpl(_$AuthenticatedUserDataImpl _value,
      $Res Function(_$AuthenticatedUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = freezed,
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
    Object? avatarPath = freezed,
    Object? onboarded = null,
    Object? subscription = freezed,
  }) {
    return _then(_$AuthenticatedUserDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      onboarded: null == onboarded
          ? _value.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedUserDataImpl extends AuthenticatedUserData {
  const _$AuthenticatedUserDataImpl(
      {required this.email,
      this.name,
      this.id,
      this.creationDate,
      this.lastUpdateDate,
      this.avatarPath,
      required this.onboarded,
      this.subscription})
      : super._();

  @override
  final String email;
  @override
  final String? name;
  @override
  final String? id;
  @override
  final DateTime? creationDate;
  @override
  final DateTime? lastUpdateDate;
  @override
  final String? avatarPath;
  @override
  final bool onboarded;
// this will be empty only if you don't use the Subscription module
  @override
  final Subscription? subscription;

  @override
  String toString() {
    return 'User.authenticated(email: $email, name: $name, id: $id, creationDate: $creationDate, lastUpdateDate: $lastUpdateDate, avatarPath: $avatarPath, onboarded: $onboarded, subscription: $subscription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastUpdateDate, lastUpdateDate) ||
                other.lastUpdateDate == lastUpdateDate) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath) &&
            (identical(other.onboarded, onboarded) ||
                other.onboarded == onboarded) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name, id, creationDate,
      lastUpdateDate, avatarPath, onboarded, subscription);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserDataImplCopyWith<_$AuthenticatedUserDataImpl>
      get copyWith => __$$AuthenticatedUserDataImplCopyWithImpl<
          _$AuthenticatedUserDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)
        authenticated,
    required TResult Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)
        anonymous,
    required TResult Function() loading,
  }) {
    return authenticated(email, name, id, creationDate, lastUpdateDate,
        avatarPath, onboarded, subscription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)?
        authenticated,
    TResult? Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)?
        anonymous,
    TResult? Function()? loading,
  }) {
    return authenticated?.call(email, name, id, creationDate, lastUpdateDate,
        avatarPath, onboarded, subscription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)?
        authenticated,
    TResult Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)?
        anonymous,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(email, name, id, creationDate, lastUpdateDate,
          avatarPath, onboarded, subscription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUserData value) authenticated,
    required TResult Function(AnonymousUserData value) anonymous,
    required TResult Function(LoadingUserData value) loading,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUserData value)? authenticated,
    TResult? Function(AnonymousUserData value)? anonymous,
    TResult? Function(LoadingUserData value)? loading,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUserData value)? authenticated,
    TResult Function(AnonymousUserData value)? anonymous,
    TResult Function(LoadingUserData value)? loading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedUserData extends User {
  const factory AuthenticatedUserData(
      {required final String email,
      final String? name,
      final String? id,
      final DateTime? creationDate,
      final DateTime? lastUpdateDate,
      final String? avatarPath,
      required final bool onboarded,
      final Subscription? subscription}) = _$AuthenticatedUserDataImpl;
  const AuthenticatedUserData._() : super._();

  String get email;
  String? get name;
  String? get id;
  DateTime? get creationDate;
  DateTime? get lastUpdateDate;
  String? get avatarPath;
  bool
      get onboarded; // this will be empty only if you don't use the Subscription module
  Subscription? get subscription;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedUserDataImplCopyWith<_$AuthenticatedUserDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnonymousUserDataImplCopyWith<$Res> {
  factory _$$AnonymousUserDataImplCopyWith(_$AnonymousUserDataImpl value,
          $Res Function(_$AnonymousUserDataImpl) then) =
      __$$AnonymousUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? id,
      bool? onboarded,
      String? name,
      Subscription? subscription,
      DateTime? creationDate,
      DateTime? lastUpdateDate});

  $SubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$$AnonymousUserDataImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$AnonymousUserDataImpl>
    implements _$$AnonymousUserDataImplCopyWith<$Res> {
  __$$AnonymousUserDataImplCopyWithImpl(_$AnonymousUserDataImpl _value,
      $Res Function(_$AnonymousUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? onboarded = freezed,
    Object? name = freezed,
    Object? subscription = freezed,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
  }) {
    return _then(_$AnonymousUserDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      onboarded: freezed == onboarded
          ? _value.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdateDate: freezed == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value));
    });
  }
}

/// @nodoc

class _$AnonymousUserDataImpl extends AnonymousUserData {
  const _$AnonymousUserDataImpl(
      {this.id,
      this.onboarded,
      this.name,
      this.subscription,
      this.creationDate,
      this.lastUpdateDate})
      : super._();

  @override
  final String? id;
  @override
  final bool? onboarded;
  @override
  final String? name;
  @override
  final Subscription? subscription;
  @override
  final DateTime? creationDate;
  @override
  final DateTime? lastUpdateDate;

  @override
  String toString() {
    return 'User.anonymous(id: $id, onboarded: $onboarded, name: $name, subscription: $subscription, creationDate: $creationDate, lastUpdateDate: $lastUpdateDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnonymousUserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.onboarded, onboarded) ||
                other.onboarded == onboarded) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastUpdateDate, lastUpdateDate) ||
                other.lastUpdateDate == lastUpdateDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, onboarded, name,
      subscription, creationDate, lastUpdateDate);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnonymousUserDataImplCopyWith<_$AnonymousUserDataImpl> get copyWith =>
      __$$AnonymousUserDataImplCopyWithImpl<_$AnonymousUserDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)
        authenticated,
    required TResult Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)
        anonymous,
    required TResult Function() loading,
  }) {
    return anonymous(
        id, onboarded, name, subscription, creationDate, lastUpdateDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)?
        authenticated,
    TResult? Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)?
        anonymous,
    TResult? Function()? loading,
  }) {
    return anonymous?.call(
        id, onboarded, name, subscription, creationDate, lastUpdateDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)?
        authenticated,
    TResult Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)?
        anonymous,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous(
          id, onboarded, name, subscription, creationDate, lastUpdateDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUserData value) authenticated,
    required TResult Function(AnonymousUserData value) anonymous,
    required TResult Function(LoadingUserData value) loading,
  }) {
    return anonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUserData value)? authenticated,
    TResult? Function(AnonymousUserData value)? anonymous,
    TResult? Function(LoadingUserData value)? loading,
  }) {
    return anonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUserData value)? authenticated,
    TResult Function(AnonymousUserData value)? anonymous,
    TResult Function(LoadingUserData value)? loading,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous(this);
    }
    return orElse();
  }
}

abstract class AnonymousUserData extends User {
  const factory AnonymousUserData(
      {final String? id,
      final bool? onboarded,
      final String? name,
      final Subscription? subscription,
      final DateTime? creationDate,
      final DateTime? lastUpdateDate}) = _$AnonymousUserDataImpl;
  const AnonymousUserData._() : super._();

  String? get id;
  bool? get onboarded;
  String? get name;
  Subscription? get subscription;
  DateTime? get creationDate;
  DateTime? get lastUpdateDate;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnonymousUserDataImplCopyWith<_$AnonymousUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingUserDataImplCopyWith<$Res> {
  factory _$$LoadingUserDataImplCopyWith(_$LoadingUserDataImpl value,
          $Res Function(_$LoadingUserDataImpl) then) =
      __$$LoadingUserDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingUserDataImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$LoadingUserDataImpl>
    implements _$$LoadingUserDataImplCopyWith<$Res> {
  __$$LoadingUserDataImplCopyWithImpl(
      _$LoadingUserDataImpl _value, $Res Function(_$LoadingUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingUserDataImpl extends LoadingUserData {
  const _$LoadingUserDataImpl() : super._();

  @override
  String toString() {
    return 'User.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingUserDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)
        authenticated,
    required TResult Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)
        anonymous,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)?
        authenticated,
    TResult? Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)?
        anonymous,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String? name,
            String? id,
            DateTime? creationDate,
            DateTime? lastUpdateDate,
            String? avatarPath,
            bool onboarded,
            Subscription? subscription)?
        authenticated,
    TResult Function(
            String? id,
            bool? onboarded,
            String? name,
            Subscription? subscription,
            DateTime? creationDate,
            DateTime? lastUpdateDate)?
        anonymous,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUserData value) authenticated,
    required TResult Function(AnonymousUserData value) anonymous,
    required TResult Function(LoadingUserData value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUserData value)? authenticated,
    TResult? Function(AnonymousUserData value)? anonymous,
    TResult? Function(LoadingUserData value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUserData value)? authenticated,
    TResult Function(AnonymousUserData value)? anonymous,
    TResult Function(LoadingUserData value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingUserData extends User {
  const factory LoadingUserData() = _$LoadingUserDataImpl;
  const LoadingUserData._() : super._();
}
