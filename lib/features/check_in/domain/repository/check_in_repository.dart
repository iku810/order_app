import '../../../../shared/table/domain/table_use.dart';

abstract class CheckInRepository {
  Future<TableUse> checkIn({
    required String storeId,
    required String tableId,
    required int number,
  });
}
