// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(orderHistoryRepository)
final orderHistoryRepositoryProvider = OrderHistoryRepositoryProvider._();

final class OrderHistoryRepositoryProvider extends $FunctionalProvider<
    OrderHistoryRepository,
    OrderHistoryRepository,
    OrderHistoryRepository> with $Provider<OrderHistoryRepository> {
  OrderHistoryRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'orderHistoryRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$orderHistoryRepositoryHash();

  @$internal
  @override
  $ProviderElement<OrderHistoryRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OrderHistoryRepository create(Ref ref) {
    return orderHistoryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderHistoryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderHistoryRepository>(value),
    );
  }
}

String _$orderHistoryRepositoryHash() =>
    r'8cb1d3d3dc455050be6027640c83b565e0d94dc1';
