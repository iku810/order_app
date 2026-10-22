import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/store/data/dto/response/store_response.dart';
import 'package:order_app/features/table_list/data/repository/table_repository_impl.dart';
import 'package:order_app/shared/auth/domain/contract_id.dart';

import '../../../../mocks.mocks.dart';

void main() {
  late MockApiClient mockApiClient;
  late TableRepositoryImpl repository;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = TableRepositoryImpl(mockApiClient, const ContractId('contract1'));
  });

  test('StoreResponseのtablesがTableドメインに変換される', () async {
    when(mockApiClient.getStore(
      contractId: anyNamed('contractId'),
      storeId: anyNamed('storeId'),
      withTables: anyNamed('withTables'),
    ),).thenAnswer(
      (_) async => const StoreResponse(
        id: 's1',
        name: '渋谷店',
        startOfDay: '00:00',
        tablesCount: 2,
        created: '2024-01-01',
        posStoreId: 'pos1',
        tables: [
          StoreTableResponse(id: 't1', name: 'T1'),
          StoreTableResponse(id: 't2', name: 'T2'),
        ],
      ),
    );

    final result = await repository.getTables('s1');

    expect(result.length, 2);
    expect(result.first.id, 't1');
    expect(result.first.name, 'T1');
  });

  test('tablesがnullの場合は空リストが返る', () async {
    when(mockApiClient.getStore(
      contractId: anyNamed('contractId'),
      storeId: anyNamed('storeId'),
      withTables: anyNamed('withTables'),
    ),).thenAnswer(
      (_) async => const StoreResponse(
        id: 's1',
        name: '渋谷店',
        startOfDay: '00:00',
        tablesCount: 0,
        created: '2024-01-01',
        posStoreId: 'pos1',
      ),
    );

    final result = await repository.getTables('s1');

    expect(result, isEmpty);
  });
}
