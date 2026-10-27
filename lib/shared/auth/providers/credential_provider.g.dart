// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(credentials)
final credentialsProvider = CredentialsProvider._();

final class CredentialsProvider
    extends $FunctionalProvider<Credentials, Credentials, Credentials>
    with $Provider<Credentials> {
  CredentialsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'credentialsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$credentialsHash();

  @$internal
  @override
  $ProviderElement<Credentials> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Credentials create(Ref ref) {
    return credentials(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Credentials value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Credentials>(value),
    );
  }
}

String _$credentialsHash() => r'b33fab5a9b3148d16d4a448d11b5ff27520cb7cc';
