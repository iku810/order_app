import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/check_in/data/repository/check_in_repository_impl.dart';
import 'package:order_app/shared/auth/domain/contract_id.dart';
import 'package:order_app/shared/table/data/dto/response/table_use_list_item_response.dart';
import 'package:order_app/shared/table/domain/table_use.dart';

import '../../../../mocks.mocks.dart';

void main() {
  late MockApiClient mockApiClient;
  late CheckInRepositoryImpl repository;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = CheckInRepositoryImpl(mockApiClient, const ContractId('contract1'));
  });

  test('checkInを呼び出しTableUseが返る', () async {
    when(mockApiClient.checkIn(
      contractId: anyNamed('contractId'),
      body: anyNamed('body'),
    ),).thenAnswer(
      (_) async => const TableUseListItemResponse(
        id: 'use1',
        storeId: 'store1',
        tables: [TableDataResponse(id: 't1', name: 'T1')],
        number: 2,
        status: 'started',
        started: '2024-01-01T00:00:00+09:00',
        customerGroups: [],
        quantity: 2,
        tableChargePerPerson: '0',
        serviceChargeRate: 0,
        totalPrice: '0',
        uuid: 'uuid1',
      ),
    );

    final result = await repository.checkIn(
      storeId: 'store1',
      tableId: 'table1',
      number: 2,
    );

    expect(result, isA<TableInUse>());
    expect(result.id, 'use1');
    verify(mockApiClient.checkIn(
      contractId: 'contract1',
      body: anyNamed('body'),
    ),).called(1);
  });
}
