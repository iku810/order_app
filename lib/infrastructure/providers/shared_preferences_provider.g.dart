// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_preferences_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sharedPreferencesStorage)
final sharedPreferencesStorageProvider = SharedPreferencesStorageProvider._();

final class SharedPreferencesStorageProvider extends $FunctionalProvider<
    SharedPreferencesStorage,
    SharedPreferencesStorage,
    SharedPreferencesStorage> with $Provider<SharedPreferencesStorage> {
  SharedPreferencesStorageProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sharedPreferencesStorageProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesStorageHash();

  @$internal
  @override
  $ProviderElement<SharedPreferencesStorage> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SharedPreferencesStorage create(Ref ref) {
    return sharedPreferencesStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferencesStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPreferencesStorage>(value),
    );
  }
}

String _$sharedPreferencesStorageHash() =>
    r'ddf7bb1dad6145351f5a00b40e687f71a362c268';
