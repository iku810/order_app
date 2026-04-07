// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CheckInNotifier)
final checkInProvider = CheckInNotifierFamily._();

final class CheckInNotifierProvider
    extends $NotifierProvider<CheckInNotifier, AsyncValue<bool>> {
  CheckInNotifierProvider._(
      {required CheckInNotifierFamily super.from,
      required (
        String,
        String,
      )
          super.argument})
      : super(
          retry: null,
          name: r'checkInProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkInNotifierHash();

  @override
  String toString() {
    return r'checkInProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  CheckInNotifier create() => CheckInNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<bool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<bool>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CheckInNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkInNotifierHash() => r'b95ce87d914c4fe80d55691f4e5e36afd76430d0';

final class CheckInNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
            CheckInNotifier,
            AsyncValue<bool>,
            AsyncValue<bool>,
            AsyncValue<bool>,
            (
              String,
              String,
            )> {
  CheckInNotifierFamily._()
      : super(
          retry: null,
          name: r'checkInProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  CheckInNotifierProvider call(
    String storeId,
    String tableId,
  ) =>
      CheckInNotifierProvider._(argument: (
        storeId,
        tableId,
      ), from: this);

  @override
  String toString() => r'checkInProvider';
}

abstract class _$CheckInNotifier extends $Notifier<AsyncValue<bool>> {
  late final _$args = ref.$arg as (
    String,
    String,
  );
  String get storeId => _$args.$1;
  String get tableId => _$args.$2;

  AsyncValue<bool> build(
    String storeId,
    String tableId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<bool>, AsyncValue<bool>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<bool>, AsyncValue<bool>>,
        AsyncValue<bool>,
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
