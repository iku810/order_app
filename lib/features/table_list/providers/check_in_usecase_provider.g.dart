// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(checkInUsecase)
final checkInUsecaseProvider = CheckInUsecaseProvider._();

final class CheckInUsecaseProvider
    extends $FunctionalProvider<CheckInUsecase, CheckInUsecase, CheckInUsecase>
    with $Provider<CheckInUsecase> {
  CheckInUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'checkInUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkInUsecaseHash();

  @$internal
  @override
  $ProviderElement<CheckInUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CheckInUsecase create(Ref ref) {
    return checkInUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckInUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckInUsecase>(value),
    );
  }
}

String _$checkInUsecaseHash() => r'7a97569af462d47425c93f66c59f8a0edd97633f';
