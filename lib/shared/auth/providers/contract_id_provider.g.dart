// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(contractId)
final contractIdProvider = ContractIdProvider._();

final class ContractIdProvider
    extends $FunctionalProvider<ContractId, ContractId, ContractId>
    with $Provider<ContractId> {
  ContractIdProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'contractIdProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$contractIdHash();

  @$internal
  @override
  $ProviderElement<ContractId> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ContractId create(Ref ref) {
    return contractId(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContractId value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContractId>(value),
    );
  }
}

String _$contractIdHash() => r'47e92d77218e710c3d7daf4312d6dc103c6b86e0';
