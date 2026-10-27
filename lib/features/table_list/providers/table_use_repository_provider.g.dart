// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_use_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tableUseRepository)
final tableUseRepositoryProvider = TableUseRepositoryProvider._();

final class TableUseRepositoryProvider extends $FunctionalProvider<
    TableUseRepository,
    TableUseRepository,
    TableUseRepository> with $Provider<TableUseRepository> {
  TableUseRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tableUseRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tableUseRepositoryHash();

  @$internal
  @override
  $ProviderElement<TableUseRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TableUseRepository create(Ref ref) {
    return tableUseRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TableUseRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TableUseRepository>(value),
    );
  }
}

String _$tableUseRepositoryHash() =>
    r'4bd639c99cb0ba00d6b83e4018a4410ee07daf53';
