import '../table.dart';

abstract class TableRepository {
  Future<List<Table>> getTables(String storeId);
}
