// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_state_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TableStateListNotifier)
final tableStateListProvider = TableStateListNotifierFamily._();

final class TableStateListNotifierProvider
    extends $AsyncNotifierProvider<TableStateListNotifier, List<TableState>> {
  TableStateListNotifierProvider._(
      {required TableStateListNotifierFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'tableStateListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tableStateListNotifierHash();

  @override
  String toString() {
    return r'tableStateListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TableStateListNotifier create() => TableStateListNotifier();

  @override
  bool operator ==(Object other) {
    return other is TableStateListNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tableStateListNotifierHash() =>
    r'6cf96c5b857d7d3ac267ffebd16f5064fbb8cf57';

final class TableStateListNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
            TableStateListNotifier,
            AsyncValue<List<TableState>>,
            List<TableState>,
            FutureOr<List<TableState>>,
            String> {
  TableStateListNotifierFamily._()
      : super(
          retry: null,
          name: r'tableStateListProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  TableStateListNotifierProvider call(
    String storeId,
  ) =>
      TableStateListNotifierProvider._(argument: storeId, from: this);

  @override
  String toString() => r'tableStateListProvider';
}

abstract class _$TableStateListNotifier
    extends $AsyncNotifier<List<TableState>> {
  late final _$args = ref.$arg as String;
  String get storeId => _$args;

  FutureOr<List<TableState>> build(
    String storeId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<TableState>>, List<TableState>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<TableState>>, List<TableState>>,
        AsyncValue<List<TableState>>,
        Object?,
        Object?>;
    element.handleCreate(
        ref,
        () => build(
              _$args,
            ));
  }
}
