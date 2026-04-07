import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/entity/contract_id.dart';
import '../../domain/repository/table_repository.dart';
import '../../domain/table.dart';

class TableRepositoryImpl implements TableRepository {
  TableRepositoryImpl(this._apiClient, this._contractId);

  final ApiClient _apiClient;
  final ContractId _contractId;

  @override
  Future<List<Table>> getTables(String storeId) async {
    final response = await _apiClient.getStore(
      contractId: _contractId.value,
      storeId: storeId,
      withTables: 'tables',
    );
    return response.tables
            ?.map(
              (t) => Table(
                id: t.id,
                name: t.name,
                category: t.category,
                sortNo: t.sortNo,
              ),
            )
            .toList() ??
        [];
  }
}
