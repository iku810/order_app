import '../../../shared/table/domain/table_use.dart';
import '../domain/repository/check_in_repository.dart';

class CheckInUsecase {
  CheckInUsecase(this._checkInRepository);

  final CheckInRepository _checkInRepository;

  Future<TableUse> execute({
    required String storeId,
    required String tableId,
    required int number,
  }) {
    return _checkInRepository.checkIn(
      storeId: storeId,
      tableId: tableId,
      number: number,
    );
  }
}
