// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_menu_list_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchMenuListUsecase)
final fetchMenuListUsecaseProvider = FetchMenuListUsecaseProvider._();

final class FetchMenuListUsecaseProvider extends $FunctionalProvider<
    FetchMenuListUsecase,
    FetchMenuListUsecase,
    FetchMenuListUsecase> with $Provider<FetchMenuListUsecase> {
  FetchMenuListUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'fetchMenuListUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fetchMenuListUsecaseHash();

  @$internal
  @override
  $ProviderElement<FetchMenuListUsecase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FetchMenuListUsecase create(Ref ref) {
    return fetchMenuListUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchMenuListUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchMenuListUsecase>(value),
    );
  }
}

String _$fetchMenuListUsecaseHash() =>
    r'2a7bf90148194cf185d6c5edc597c706eb9f555c';
