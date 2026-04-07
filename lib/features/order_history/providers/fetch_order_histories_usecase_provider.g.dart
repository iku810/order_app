// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_order_histories_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchOrderHistoriesUsecase)
final fetchOrderHistoriesUsecaseProvider =
    FetchOrderHistoriesUsecaseProvider._();

final class FetchOrderHistoriesUsecaseProvider extends $FunctionalProvider<
    FetchOrderHistoriesUsecase,
    FetchOrderHistoriesUsecase,
    FetchOrderHistoriesUsecase> with $Provider<FetchOrderHistoriesUsecase> {
  FetchOrderHistoriesUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'fetchOrderHistoriesUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fetchOrderHistoriesUsecaseHash();

  @$internal
  @override
  $ProviderElement<FetchOrderHistoriesUsecase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FetchOrderHistoriesUsecase create(Ref ref) {
    return fetchOrderHistoriesUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchOrderHistoriesUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchOrderHistoriesUsecase>(value),
    );
  }
}

String _$fetchOrderHistoriesUsecaseHash() =>
    r'd90058652eb89a2f81e984a040e91a72bcdb1a41';
