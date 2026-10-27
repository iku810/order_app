// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(apiDio)
final apiDioProvider = ApiDioProvider._();

final class ApiDioProvider extends $FunctionalProvider<ApiDio, ApiDio, ApiDio>
    with $Provider<ApiDio> {
  ApiDioProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'apiDioProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$apiDioHash();

  @$internal
  @override
  $ProviderElement<ApiDio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ApiDio create(Ref ref) {
    return apiDio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApiDio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApiDio>(value),
    );
  }
}

String _$apiDioHash() => r'2bd725916dde366b173c8e969f0a0f3617c06aa4';
