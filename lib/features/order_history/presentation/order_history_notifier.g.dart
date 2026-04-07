// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderHistoryNotifier)
final orderHistoryProvider = OrderHistoryNotifierFamily._();

final class OrderHistoryNotifierProvider
    extends $AsyncNotifierProvider<OrderHistoryNotifier, List<OrderHistory>> {
  OrderHistoryNotifierProvider._(
      {required OrderHistoryNotifierFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'orderHistoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderHistoryNotifierHash();

  @override
  String toString() {
    return r'orderHistoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  OrderHistoryNotifier create() => OrderHistoryNotifier();

  @override
  bool operator ==(Object other) {
    return other is OrderHistoryNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$orderHistoryNotifierHash() =>
    r'2fb67fa48d08add2b6dee82408d63a5935302935';

final class OrderHistoryNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
            OrderHistoryNotifier,
            AsyncValue<List<OrderHistory>>,
            List<OrderHistory>,
            FutureOr<List<OrderHistory>>,
            String> {
  OrderHistoryNotifierFamily._()
      : super(
          retry: null,
          name: r'orderHistoryProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  OrderHistoryNotifierProvider call(
    String tableUseId,
  ) =>
      OrderHistoryNotifierProvider._(argument: tableUseId, from: this);

  @override
  String toString() => r'orderHistoryProvider';
}

abstract class _$OrderHistoryNotifier
    extends $AsyncNotifier<List<OrderHistory>> {
  late final _$args = ref.$arg as String;
  String get tableUseId => _$args;

  FutureOr<List<OrderHistory>> build(
    String tableUseId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<OrderHistory>>, List<OrderHistory>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<OrderHistory>>, List<OrderHistory>>,
        AsyncValue<List<OrderHistory>>,
        Object?,
        Object?>;
    element.handleCreate(
        ref,
        () => build(
              _$args,
            ));
  }
}
