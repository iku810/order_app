// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_store_list_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchStoreListUsecase)
final fetchStoreListUsecaseProvider = FetchStoreListUsecaseProvider._();

final class FetchStoreListUsecaseProvider extends $FunctionalProvider<
    FetchStoreListUsecase,
    FetchStoreListUsecase,
    FetchStoreListUsecase> with $Provider<FetchStoreListUsecase> {
  FetchStoreListUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'fetchStoreListUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fetchStoreListUsecaseHash();

  @$internal
  @override
  $ProviderElement<FetchStoreListUsecase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FetchStoreListUsecase create(Ref ref) {
    return fetchStoreListUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchStoreListUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchStoreListUsecase>(value),
    );
  }
}

String _$fetchStoreListUsecaseHash() =>
    r'12a3c19c82662bce2442a55652052784ad38b023';
