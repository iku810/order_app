// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_summary_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(paymentSummary)
final paymentSummaryProvider = PaymentSummaryFamily._();

final class PaymentSummaryProvider extends $FunctionalProvider<
        AsyncValue<PaymentSummary>, PaymentSummary, FutureOr<PaymentSummary>>
    with $FutureModifier<PaymentSummary>, $FutureProvider<PaymentSummary> {
  PaymentSummaryProvider._(
      {required PaymentSummaryFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'paymentSummaryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$paymentSummaryHash();

  @override
  String toString() {
    return r'paymentSummaryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PaymentSummary> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PaymentSummary> create(Ref ref) {
    final argument = this.argument as String;
    return paymentSummary(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PaymentSummaryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$paymentSummaryHash() => r'dc6b9bfce4ef43838fbb57910b8cdb3b42e8dfe9';

final class PaymentSummaryFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PaymentSummary>, String> {
  PaymentSummaryFamily._()
      : super(
          retry: null,
          name: r'paymentSummaryProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  PaymentSummaryProvider call(
    String tableUseId,
  ) =>
      PaymentSummaryProvider._(argument: tableUseId, from: this);

  @override
  String toString() => r'paymentSummaryProvider';
}
