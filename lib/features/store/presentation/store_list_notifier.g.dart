// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StoreListNotifier)
final storeListProvider = StoreListNotifierProvider._();

final class StoreListNotifierProvider
    extends $AsyncNotifierProvider<StoreListNotifier, StoreList> {
  StoreListNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'storeListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$storeListNotifierHash();

  @$internal
  @override
  StoreListNotifier create() => StoreListNotifier();
}

String _$storeListNotifierHash() => r'346f0d90998cef3cfe9f2ed3211983017a23b3cf';

abstract class _$StoreListNotifier extends $AsyncNotifier<StoreList> {
  FutureOr<StoreList> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<StoreList>, StoreList>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<StoreList>, StoreList>,
        AsyncValue<StoreList>,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
