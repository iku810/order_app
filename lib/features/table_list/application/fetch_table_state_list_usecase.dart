import '../domain/repository/table_repository.dart';
import '../domain/repository/table_use_repository.dart';
import '../domain/table_state.dart';

class FetchTableStateListUsecase {
  FetchTableStateListUsecase(this._tableRepository, this._tableUseRepository);

  final TableUseRepository _tableUseRepository;

  final TableRepository _tableRepository;

  Future<List<TableState>> execute(String storeId) async {
    final tables = await _tableRepository.getTables(storeId);
    final tableUses = await _tableUseRepository.getTableUses(storeId: storeId);
    final tablesInUse = tableUses.inUse;
    final tableUseMap = {
      for (final tableInUse in tablesInUse)
        for (final table in tableInUse.tables) table.id: tableInUse,
    };

    return tables
        .map((table) => TableState.from(table, tableUseMap[table.id]))
        .toList();
  }
}
