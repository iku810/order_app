// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_submission_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderSubmissionNotifier)
final orderSubmissionProvider = OrderSubmissionNotifierFamily._();

final class OrderSubmissionNotifierProvider
    extends $NotifierProvider<OrderSubmissionNotifier, AsyncValue<void>> {
  OrderSubmissionNotifierProvider._(
      {required OrderSubmissionNotifierFamily super.from,
      required (
        String,
        String,
      )
          super.argument})
      : super(
          retry: null,
          name: r'orderSubmissionProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderSubmissionNotifierHash();

  @override
  String toString() {
    return r'orderSubmissionProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  OrderSubmissionNotifier create() => OrderSubmissionNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is OrderSubmissionNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$orderSubmissionNotifierHash() =>
    r'a832526e7d7975eb887b702b4f48f07e415a6ef1';

final class OrderSubmissionNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
            OrderSubmissionNotifier,
            AsyncValue<void>,
            AsyncValue<void>,
            AsyncValue<void>,
            (
              String,
              String,
            )> {
  OrderSubmissionNotifierFamily._()
      : super(
          retry: null,
          name: r'orderSubmissionProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  OrderSubmissionNotifierProvider call(
    String storeId,
    String tableUseId,
  ) =>
      OrderSubmissionNotifierProvider._(argument: (
        storeId,
        tableUseId,
      ), from: this);

  @override
  String toString() => r'orderSubmissionProvider';
}

abstract class _$OrderSubmissionNotifier extends $Notifier<AsyncValue<void>> {
  late final _$args = ref.$arg as (
    String,
    String,
  );
  String get storeId => _$args.$1;
  String get tableUseId => _$args.$2;

  AsyncValue<void> build(
    String storeId,
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
              _$args.$1,
              _$args.$2,
            ));
  }
}
