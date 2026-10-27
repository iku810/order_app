// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartNotifier)
final cartProvider = CartNotifierFamily._();

final class CartNotifierProvider extends $NotifierProvider<CartNotifier, Cart> {
  CartNotifierProvider._(
      {required CartNotifierFamily super.from,
      required (
        String,
        String,
      )
          super.argument})
      : super(
          retry: null,
          name: r'cartProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$cartNotifierHash();

  @override
  String toString() {
    return r'cartProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  CartNotifier create() => CartNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Cart value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Cart>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CartNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$cartNotifierHash() => r'989318fdcd99a3f7701899020fc333b673fd332d';

final class CartNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
            CartNotifier,
            Cart,
            Cart,
            Cart,
            (
              String,
              String,
            )> {
  CartNotifierFamily._()
      : super(
          retry: null,
          name: r'cartProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  CartNotifierProvider call(
    String storeId,
    String tableUseId,
  ) =>
      CartNotifierProvider._(argument: (
        storeId,
        tableUseId,
      ), from: this);

  @override
  String toString() => r'cartProvider';
}

abstract class _$CartNotifier extends $Notifier<Cart> {
  late final _$args = ref.$arg as (
    String,
    String,
  );
  String get storeId => _$args.$1;
  String get tableUseId => _$args.$2;

  Cart build(
    String storeId,
    String tableUseId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Cart, Cart>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<Cart, Cart>, Cart, Object?, Object?>;
    element.handleCreate(
        ref,
        () => build(
              _$args.$1,
              _$args.$2,
            ));
  }
}
