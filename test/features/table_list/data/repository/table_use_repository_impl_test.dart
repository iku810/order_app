import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/table_list/data/repository/table_use_repository_impl.dart';
import 'package:order_app/shared/auth/domain/contract_id.dart';
import 'package:order_app/shared/table/data/dto/response/table_use_detail_response.dart';
import 'package:order_app/shared/table/data/dto/response/table_use_list_item_response.dart';
import 'package:order_app/shared/table/domain/table_use.dart';

import '../../../../mocks.mocks.dart';

const contractId = ContractId('contract1');

const tableUseListItem = TableUseListItemResponse(
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
);

final tableUseDetailResponse = TableUseDetailResponse(
  id: 'use1',
  storeId: 'store1',
  tables: const [TableDataResponse(id: 't1', name: 'T1')],
  number: 2,
  status: 'started',
  started: '2024-01-01T00:00:00+09:00',
  customerGroups: const [],
  quantity: 2,
  tableChargePerPerson: '0',
  serviceChargeRate: 0,
  totalPrice: '0',
  uuid: 'uuid1',
  orders: const [],
);

void main() {
  late MockApiClient mockApiClient;
  late TableUseRepositoryImpl repository;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = TableUseRepositoryImpl(mockApiClient, contractId);
  });

  group('getTableUses', () {
    test('responseがTableUseListに変換される', () async {
      when(mockApiClient.getTableUses(
        contractId: anyNamed('contractId'),
        storeId: anyNamed('storeId'),
        status: anyNamed('status'),
        page: anyNamed('page'),
      ),).thenAnswer((_) async => [tableUseListItem]);

      final result = await repository.getTableUses();

      expect(result.values.length, 1);
      expect(result.values.first.id, 'use1');
    });
  });

  group('getTableUse', () {
    test('responseがTableUseに変換される', () async {
      when(mockApiClient.getTableUse(
        contractId: anyNamed('contractId'),
        tableUseId: anyNamed('tableUseId'),
      ),).thenAnswer((_) async => tableUseDetailResponse);

      final result = await repository.getTableUse('use1');

      expect(result, isA<TableInUse>());
      expect(result.id, 'use1');
    });
  });

  group('checkout', () {
    test('tableUseIdを渡してcheckoutが呼ばれる', () async {
      when(mockApiClient.checkout(
        contractId: anyNamed('contractId'),
        tableUseId: anyNamed('tableUseId'),
        body: anyNamed('body'),
      ),).thenAnswer((_) async {});

      await repository.checkout('use1');

      verify(mockApiClient.checkout(
        contractId: 'contract1',
        tableUseId: 'use1',
        body: anyNamed('body'),
      ),).called(1);
    });
  });

  group('cancelTableUse', () {
    test('tableUseIdを渡してcancelTableUseが呼ばれる', () async {
      when(mockApiClient.cancelTableUse(
        contractId: anyNamed('contractId'),
        tableUseId: anyNamed('tableUseId'),
      ),).thenAnswer((_) async {});

      await repository.cancelTableUse('use1');

      verify(mockApiClient.cancelTableUse(
        contractId: 'contract1',
        tableUseId: 'use1',
      ),).called(1);
    });
  });

  group('cancelOrder', () {
    test('tableUseIdとorderItemIdsを渡してcancelOrderが呼ばれる', () async {
      when(mockApiClient.cancelOrder(
        contractId: anyNamed('contractId'),
        tableUseId: anyNamed('tableUseId'),
        body: anyNamed('body'),
      ),).thenAnswer((_) async {});

      await repository.cancelOrder('use1', orderItemIds: ['i1']);

      verify(mockApiClient.cancelOrder(
        contractId: 'contract1',
        tableUseId: 'use1',
        body: anyNamed('body'),
      ),).called(1);
    });
  });
}
