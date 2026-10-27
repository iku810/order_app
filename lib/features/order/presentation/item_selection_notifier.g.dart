// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_selection_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ItemSelectionNotifier)
final itemSelectionProvider = ItemSelectionNotifierFamily._();

final class ItemSelectionNotifierProvider extends $NotifierProvider<
    ItemSelectionNotifier, Map<String, MenuSelection>> {
  ItemSelectionNotifierProvider._(
      {required ItemSelectionNotifierFamily super.from,
      required (
        String,
        String,
      )
          super.argument})
      : super(
          retry: null,
          name: r'itemSelectionProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$itemSelectionNotifierHash();

  @override
  String toString() {
    return r'itemSelectionProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ItemSelectionNotifier create() => ItemSelectionNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, MenuSelection> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, MenuSelection>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ItemSelectionNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$itemSelectionNotifierHash() =>
    r'81754696b4092d09a616290932bfafff4570c4a6';

final class ItemSelectionNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
            ItemSelectionNotifier,
            Map<String, MenuSelection>,
            Map<String, MenuSelection>,
            Map<String, MenuSelection>,
            (
              String,
              String,
            )> {
  ItemSelectionNotifierFamily._()
      : super(
          retry: null,
          name: r'itemSelectionProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ItemSelectionNotifierProvider call(
    String storeId,
    String tableUseId,
  ) =>
      ItemSelectionNotifierProvider._(argument: (
        storeId,
        tableUseId,
      ), from: this);

  @override
  String toString() => r'itemSelectionProvider';
}

abstract class _$ItemSelectionNotifier
    extends $Notifier<Map<String, MenuSelection>> {
  late final _$args = ref.$arg as (
    String,
    String,
  );
  String get storeId => _$args.$1;
  String get tableUseId => _$args.$2;

  Map<String, MenuSelection> build(
    String storeId,
    String tableUseId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref
        as $Ref<Map<String, MenuSelection>, Map<String, MenuSelection>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<Map<String, MenuSelection>, Map<String, MenuSelection>>,
        Map<String, MenuSelection>,
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
