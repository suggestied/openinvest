// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_data_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rawDataNotifierHash() => r'70dab6a63bea27dacebca4f430107fa380320cb1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$RawDataNotifier extends BuildlessAsyncNotifier<RawDataState> {
  late final RawDataProviderArgs args;

  FutureOr<RawDataState> build(
    RawDataProviderArgs args,
  );
}

/// See also [RawDataNotifier].
@ProviderFor(RawDataNotifier)
const rawDataNotifierProvider = RawDataNotifierFamily();

/// See also [RawDataNotifier].
class RawDataNotifierFamily extends Family<AsyncValue<RawDataState>> {
  /// See also [RawDataNotifier].
  const RawDataNotifierFamily();

  /// See also [RawDataNotifier].
  RawDataNotifierProvider call(
    RawDataProviderArgs args,
  ) {
    return RawDataNotifierProvider(
      args,
    );
  }

  @override
  RawDataNotifierProvider getProviderOverride(
    covariant RawDataNotifierProvider provider,
  ) {
    return call(
      provider.args,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'rawDataNotifierProvider';
}

/// See also [RawDataNotifier].
class RawDataNotifierProvider
    extends AsyncNotifierProviderImpl<RawDataNotifier, RawDataState> {
  /// See also [RawDataNotifier].
  RawDataNotifierProvider(
    RawDataProviderArgs args,
  ) : this._internal(
          () => RawDataNotifier()..args = args,
          from: rawDataNotifierProvider,
          name: r'rawDataNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rawDataNotifierHash,
          dependencies: RawDataNotifierFamily._dependencies,
          allTransitiveDependencies:
              RawDataNotifierFamily._allTransitiveDependencies,
          args: args,
        );

  RawDataNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.args,
  }) : super.internal();

  final RawDataProviderArgs args;

  @override
  FutureOr<RawDataState> runNotifierBuild(
    covariant RawDataNotifier notifier,
  ) {
    return notifier.build(
      args,
    );
  }

  @override
  Override overrideWith(RawDataNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: RawDataNotifierProvider._internal(
        () => create()..args = args,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        args: args,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<RawDataNotifier, RawDataState> createElement() {
    return _RawDataNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RawDataNotifierProvider && other.args == args;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, args.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RawDataNotifierRef on AsyncNotifierProviderRef<RawDataState> {
  /// The parameter `args` of this provider.
  RawDataProviderArgs get args;
}

class _RawDataNotifierProviderElement
    extends AsyncNotifierProviderElement<RawDataNotifier, RawDataState>
    with RawDataNotifierRef {
  _RawDataNotifierProviderElement(super.provider);

  @override
  RawDataProviderArgs get args => (origin as RawDataNotifierProvider).args;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
