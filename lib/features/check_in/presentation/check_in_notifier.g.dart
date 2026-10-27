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
    extends $NotifierProvider<CheckInNotifier, CheckInState> {
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
  Override overrideWithValue(CheckInState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckInState>(value),
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

String _$checkInNotifierHash() => r'525e50f3a6b80cbe52d619c818866e779040d2dc';

final class CheckInNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
            CheckInNotifier,
            CheckInState,
            CheckInState,
            CheckInState,
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

abstract class _$CheckInNotifier extends $Notifier<CheckInState> {
  late final _$args = ref.$arg as (
    String,
    String,
  );
  String get storeId => _$args.$1;
  String get tableId => _$args.$2;

  CheckInState build(
    String storeId,
    String tableId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CheckInState, CheckInState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<CheckInState, CheckInState>,
        CheckInState,
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
