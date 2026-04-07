// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authUseCase)
final authUseCaseProvider = AuthUseCaseProvider._();

final class AuthUseCaseProvider
    extends $FunctionalProvider<AuthUsecase, AuthUsecase, AuthUsecase>
    with $Provider<AuthUsecase> {
  AuthUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'authUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$authUseCaseHash();

  @$internal
  @override
  $ProviderElement<AuthUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthUsecase create(Ref ref) {
    return authUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthUsecase>(value),
    );
  }
}

String _$authUseCaseHash() => r'6c7957e81897baa544b2c892ea31c492de600aa5';
