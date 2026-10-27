// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CheckoutNotifier)
final checkoutProvider = CheckoutNotifierFamily._();

final class CheckoutNotifierProvider
    extends $NotifierProvider<CheckoutNotifier, AsyncValue<void>> {
  CheckoutNotifierProvider._(
      {required CheckoutNotifierFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'checkoutProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkoutNotifierHash();

  @override
  String toString() {
    return r'checkoutProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CheckoutNotifier create() => CheckoutNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CheckoutNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkoutNotifierHash() => r'e76c1793b4cb17a939421e7667dd209b00f3397d';

final class CheckoutNotifierFamily extends $Family
    with
        $ClassFamilyOverride<CheckoutNotifier, AsyncValue<void>,
            AsyncValue<void>, AsyncValue<void>, String> {
  CheckoutNotifierFamily._()
      : super(
          retry: null,
          name: r'checkoutProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  CheckoutNotifierProvider call(
    String tableUseId,
  ) =>
      CheckoutNotifierProvider._(argument: tableUseId, from: this);

  @override
  String toString() => r'checkoutProvider';
}

abstract class _$CheckoutNotifier extends $Notifier<AsyncValue<void>> {
  late final _$args = ref.$arg as String;
  String get tableUseId => _$args;

  AsyncValue<void> build(
    String tableUseId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
        AsyncValue<void>,
        Object?,
        Object?>;
    element.handleCreate(
        ref,
        () => build(
              _$args,
            ));
  }
}
