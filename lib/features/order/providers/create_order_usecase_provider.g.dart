// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(createOrderUsecase)
final createOrderUsecaseProvider = CreateOrderUsecaseProvider._();

final class CreateOrderUsecaseProvider extends $FunctionalProvider<
    CreateOrderUsecase,
    CreateOrderUsecase,
    CreateOrderUsecase> with $Provider<CreateOrderUsecase> {
  CreateOrderUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'createOrderUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$createOrderUsecaseHash();

  @$internal
  @override
  $ProviderElement<CreateOrderUsecase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CreateOrderUsecase create(Ref ref) {
    return createOrderUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateOrderUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateOrderUsecase>(value),
    );
  }
}

String _$createOrderUsecaseHash() =>
    r'e11bb5623d9f0380f20715816250db9cccb5a8a7';
