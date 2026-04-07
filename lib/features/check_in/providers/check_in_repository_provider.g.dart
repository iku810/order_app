// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(checkInRepository)
final checkInRepositoryProvider = CheckInRepositoryProvider._();

final class CheckInRepositoryProvider extends $FunctionalProvider<
    CheckInRepository,
    CheckInRepository,
    CheckInRepository> with $Provider<CheckInRepository> {
  CheckInRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'checkInRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkInRepositoryHash();

  @$internal
  @override
  $ProviderElement<CheckInRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CheckInRepository create(Ref ref) {
    return checkInRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckInRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckInRepository>(value),
    );
  }
}

String _$checkInRepositoryHash() => r'6c6600c4d0a0c2235e4ad6e05cb0cf7c678259fc';
