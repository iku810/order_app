// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_table_state_list_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchTableStateListUsecase)
final fetchTableStateListUsecaseProvider =
    FetchTableStateListUsecaseProvider._();

final class FetchTableStateListUsecaseProvider extends $FunctionalProvider<
    FetchTableStateListUsecase,
    FetchTableStateListUsecase,
    FetchTableStateListUsecase> with $Provider<FetchTableStateListUsecase> {
  FetchTableStateListUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'fetchTableStateListUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fetchTableStateListUsecaseHash();

  @$internal
  @override
  $ProviderElement<FetchTableStateListUsecase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FetchTableStateListUsecase create(Ref ref) {
    return fetchTableStateListUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchTableStateListUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchTableStateListUsecase>(value),
    );
  }
}

String _$fetchTableStateListUsecaseHash() =>
    r'd02bf2711e65814342da535b7e14193ff5dd8616';
