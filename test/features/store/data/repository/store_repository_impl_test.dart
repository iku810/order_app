import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/store/data/dto/response/store_response.dart';
import 'package:order_app/features/store/data/repository/store_repository_impl.dart';
import 'package:order_app/shared/auth/domain/contract_id.dart';

import '../../../../mocks.mocks.dart';

void main() {
  late MockApiClient mockApiClient;
  late StoreRepositoryImpl repository;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = StoreRepositoryImpl(mockApiClient, const ContractId('contract1'));
  });

  test('StoreResponseがStoreドメインに変換される', () async {
    when(mockApiClient.getStores(
      contractId: anyNamed('contractId'),
      status: anyNamed('status'),
      page: anyNamed('page'),
    ),).thenAnswer(
      (_) async => [
        const StoreResponse(
          id: 's1',
          name: '渋谷店',
          startOfDay: '00:00',
          tablesCount: 10,
          created: '2024-01-01',
          posStoreId: 'pos1',
        ),
      ],
    );

    final result = await repository.getStores();

    expect(result.values.length, 1);
    expect(result.values.first.id, 's1');
    expect(result.values.first.name, '渋谷店');
  });
}
