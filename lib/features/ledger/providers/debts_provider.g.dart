// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$debtsHash() => r'7b389ec2f86eeb284f225b0d0fa68ce2c02aaa62';

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

abstract class _$Debts extends BuildlessAutoDisposeAsyncNotifier<List<Ledger>> {
  late final String? query;
  late final LedgerType? type;

  Future<List<Ledger>> build({
    String? query,
    LedgerType? type,
  });
}

/// See also [Debts].
@ProviderFor(Debts)
const debtsProvider = DebtsFamily();

/// See also [Debts].
class DebtsFamily extends Family<AsyncValue<List<Ledger>>> {
  /// See also [Debts].
  const DebtsFamily();

  /// See also [Debts].
  DebtsProvider call({
    String? query,
    LedgerType? type,
  }) {
    return DebtsProvider(
      query: query,
      type: type,
    );
  }

  @override
  DebtsProvider getProviderOverride(
    covariant DebtsProvider provider,
  ) {
    return call(
      query: provider.query,
      type: provider.type,
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
  String? get name => r'debtsProvider';
}

/// See also [Debts].
class DebtsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Debts, List<Ledger>> {
  /// See also [Debts].
  DebtsProvider({
    String? query,
    LedgerType? type,
  }) : this._internal(
          () => Debts()
            ..query = query
            ..type = type,
          from: debtsProvider,
          name: r'debtsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$debtsHash,
          dependencies: DebtsFamily._dependencies,
          allTransitiveDependencies: DebtsFamily._allTransitiveDependencies,
          query: query,
          type: type,
        );

  DebtsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.type,
  }) : super.internal();

  final String? query;
  final LedgerType? type;

  @override
  Future<List<Ledger>> runNotifierBuild(
    covariant Debts notifier,
  ) {
    return notifier.build(
      query: query,
      type: type,
    );
  }

  @override
  Override overrideWith(Debts Function() create) {
    return ProviderOverride(
      origin: this,
      override: DebtsProvider._internal(
        () => create()
          ..query = query
          ..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Debts, List<Ledger>> createElement() {
    return _DebtsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DebtsProvider && other.query == query && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DebtsRef on AutoDisposeAsyncNotifierProviderRef<List<Ledger>> {
  /// The parameter `query` of this provider.
  String? get query;

  /// The parameter `type` of this provider.
  LedgerType? get type;
}

class _DebtsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Debts, List<Ledger>>
    with DebtsRef {
  _DebtsProviderElement(super.provider);

  @override
  String? get query => (origin as DebtsProvider).query;
  @override
  LedgerType? get type => (origin as DebtsProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
