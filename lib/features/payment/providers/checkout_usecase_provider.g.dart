// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(checkoutUsecase)
final checkoutUsecaseProvider = CheckoutUsecaseProvider._();

final class CheckoutUsecaseProvider extends $FunctionalProvider<CheckoutUsecase,
    CheckoutUsecase, CheckoutUsecase> with $Provider<CheckoutUsecase> {
  CheckoutUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'checkoutUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkoutUsecaseHash();

  @$internal
  @override
  $ProviderElement<CheckoutUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CheckoutUsecase create(Ref ref) {
    return checkoutUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckoutUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckoutUsecase>(value),
    );
  }
}

String _$checkoutUsecaseHash() => r'66a84ba5ebf87b72e3c707f6ec35c8e5d7a64747';
