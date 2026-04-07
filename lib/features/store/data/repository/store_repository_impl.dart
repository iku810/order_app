import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/entity/contract_id.dart';
import '../../domain/repository/store_repository.dart';
import '../../domain/store.dart';
import '../dto/response/store_response.dart';

class StoreRepositoryImpl implements StoreRepository {
  StoreRepositoryImpl(this._apiClient, this._contractId);

  final ContractId _contractId;

  final ApiClient _apiClient;

  @override
  Future<List<Store>> getStores({String? status, int? page}) async {
    final responses = await _apiClient.getStores(
      contractId: _contractId.value,
      status: status,
      page: page,
    );
    return responses.map(_toStoreDomain).toList();
  }

  @override
  Future<Store> getStore(String storeId, {String? withTables}) async {
    final response = await _apiClient.getStore(
      contractId: _contractId.value,
      storeId: storeId,
      withTables: withTables,
    );
    return _toStoreDomain(response);
  }

  Store _toStoreDomain(StoreResponse dto) => Store(
        id: dto.id,
        name: dto.name,
        startOfDay: dto.startOfDay,
        tablesCount: dto.tablesCount,
        suspendAt:
            dto.suspend != null ? DateTime.parse(dto.suspend!) : null,
        createdAt: DateTime.parse(dto.created),
        posStoreId: dto.posStoreId,
        tables: dto.tables
            ?.map(
              (t) => StoreTable(
                id: t.id,
                name: t.name,
                category: t.category,
                sortNo: t.sortNo,
              ),
            )
            .toList(),
      );
}
