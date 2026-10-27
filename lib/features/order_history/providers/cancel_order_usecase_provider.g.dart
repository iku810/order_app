// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_order_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cancelOrderUsecase)
final cancelOrderUsecaseProvider = CancelOrderUsecaseProvider._();

final class CancelOrderUsecaseProvider extends $FunctionalProvider<
    CancelOrderUsecase,
    CancelOrderUsecase,
    CancelOrderUsecase> with $Provider<CancelOrderUsecase> {
  CancelOrderUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'cancelOrderUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$cancelOrderUsecaseHash();

  @$internal
  @override
  $ProviderElement<CancelOrderUsecase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CancelOrderUsecase create(Ref ref) {
    return cancelOrderUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CancelOrderUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CancelOrderUsecase>(value),
    );
  }
}

String _$cancelOrderUsecaseHash() =>
    r'cf0b82637682e3b27be1be0475ace21cb9e75fff';
