import '../../features/check_in/domain/repository/check_in_repository.dart';
import '../../shared/table/domain/table.dart';
import '../../shared/table/domain/table_use.dart';

class MockCheckInRepository implements CheckInRepository {
  @override
  Future<TableUse> checkIn({
    required String storeId,
    required String tableId,
    required int number,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    final id = 'table-use-mock-${DateTime.now().millisecondsSinceEpoch}';
    return TableUse.from(
      id: id,
      tables: [Table(id: tableId, name: 'テーブル$tableId')],
      status: TableUseStatus.using,
      number: number,
      started: DateTime.now(),
      tableChargePerPerson: '0',
      serviceChargeRate: 0,
      totalPrice: '0',
    );
  }
}
