import '../domain/repository/table_use_repository.dart';
import '../domain/table_use.dart';

class CheckInUsecase {
  CheckInUsecase(this._tableUseRepository);

  final TableUseRepository _tableUseRepository;

  Future<TableUse> execute({
    required String storeId,
    required String tableId,
    required int number,
  }) {
    return _tableUseRepository.checkIn(
      storeId: storeId,
      tableIds: [tableId],
      number: number,
    );
  }
}
