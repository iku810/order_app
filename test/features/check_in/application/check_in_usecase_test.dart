import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/check_in/application/check_in_usecase.dart';
import 'package:order_app/shared/table/domain/table.dart';
import 'package:order_app/shared/table/domain/table_use.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockCheckInRepository mockRepository;
  late CheckInUsecase usecase;

  setUpAll(() {
    provideDummy<TableUse>(
      TableUse.from(
        id: 'dummy',
        tables: [const Table(id: 't0', name: 'T0')],
        status: TableUseStatus.using,
        number: 1,
        started: DateTime.utc(2024),
        tableChargePerPerson: '0',
        serviceChargeRate: 0,
        totalPrice: '0',
      ),
    );
  });

  setUp(() {
    mockRepository = MockCheckInRepository();
    usecase = CheckInUsecase(mockRepository);
  });

  test('storeId/tableId/numberを渡してcheckInが呼ばれ結果が返る', () async {
    final tableUse = TableUse.from(
      id: 'use1',
      tables: [const Table(id: 't1', name: 'T1')],
      status: TableUseStatus.using,
      number: 2,
      started: DateTime.utc(2024, 1, 1),
      tableChargePerPerson: '0',
      serviceChargeRate: 0,
      totalPrice: '0',
    );
    when(
      mockRepository.checkIn(
        storeId: 'store1',
        tableId: 'table1',
        number: 2,
      ),
    ).thenAnswer((_) async => tableUse);

    final result = await usecase.execute(
      storeId: 'store1',
      tableId: 'table1',
      number: 2,
    );

    expect(result, tableUse);
    verify(
      mockRepository.checkIn(
        storeId: 'store1',
        tableId: 'table1',
        number: 2,
      ),
    ).called(1);
  });
}
