// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_summary_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getPaymentSummaryUsecase)
final getPaymentSummaryUsecaseProvider = GetPaymentSummaryUsecaseProvider._();

final class GetPaymentSummaryUsecaseProvider extends $FunctionalProvider<
    GetPaymentSummaryUsecase,
    GetPaymentSummaryUsecase,
    GetPaymentSummaryUsecase> with $Provider<GetPaymentSummaryUsecase> {
  GetPaymentSummaryUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getPaymentSummaryUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getPaymentSummaryUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetPaymentSummaryUsecase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetPaymentSummaryUsecase create(Ref ref) {
    return getPaymentSummaryUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPaymentSummaryUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPaymentSummaryUsecase>(value),
    );
  }
}

String _$getPaymentSummaryUsecaseHash() =>
    r'0cbaf77a99780cf1209e80ad4ac027d0326c832c';
