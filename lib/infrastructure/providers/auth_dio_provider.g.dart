// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authDio)
final authDioProvider = AuthDioProvider._();

final class AuthDioProvider
    extends $FunctionalProvider<AuthDio, AuthDio, AuthDio>
    with $Provider<AuthDio> {
  AuthDioProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'authDioProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$authDioHash();

  @$internal
  @override
  $ProviderElement<AuthDio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthDio create(Ref ref) {
    return authDio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthDio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthDio>(value),
    );
  }
}

String _$authDioHash() => r'c1522d7abb307f872b00ffee6f769a9a93c6f187';
