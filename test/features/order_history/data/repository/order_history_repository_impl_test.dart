import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/order_history/data/repository/order_history_repository_impl.dart';
import 'package:order_app/shared/auth/domain/contract_id.dart';
import 'package:order_app/shared/table/data/dto/response/table_use_detail_response.dart';

import '../../../../mocks.mocks.dart';

const contractId = ContractId('contract1');

TableUseDetailResponse buildTableUseResponse({
  List<OrderInTableUseResponse> orders = const [],
}) =>
    TableUseDetailResponse(
      id: 'use1',
      storeId: 'store1',
      tables: const [],
      number: 2,
      status: 'started',
      started: '2024-01-01T00:00:00+09:00',
      customerGroups: const [],
      quantity: 2,
      tableChargePerPerson: '0',
      serviceChargeRate: 0,
      totalPrice: '0',
      uuid: 'uuid1',
      orders: orders,
    );

void main() {
  late MockApiClient mockApiClient;
  late OrderHistoryRepositoryImpl repository;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = OrderHistoryRepositoryImpl(mockApiClient, contractId);
  });

  group('getOrderHistories', () {
    test('DTOがOrderHistoryドメインに変換される', () async {
      when(mockApiClient.getTableUse(
        contractId: 'contract1',
        tableUseId: 'use1',
      ),).thenAnswer(
        (_) async => buildTableUseResponse(
          orders: [
            OrderInTableUseResponse(
              orderId: 'o1',
              ordered: '2024-01-01T00:00:00+09:00',
              tableUseId: 'use1',
              items: [
                const OrderItemInTableUseResponse(
                  id: 'i1',
                  name: 'ラーメン',
                  status: 'waiting',
                  menuId: 'm1',
                  quantity: 2,
                  menuType: 'normal',
                ),
              ],
            ),
          ],
        ),
      );

      final result = await repository.getOrderHistories('use1');

      expect(result.length, 1);
      expect(result.first.orderId, 'o1');
      expect(result.first.items.length, 1);
      expect(result.first.items.first.name, 'ラーメン');
      expect(result.first.items.first.quantity, 2);
    });
  });

  group('cancelOrder', () {
    test('tableUseIdとorderItemIdsを渡してcancelOrderが呼ばれる', () async {
      when(mockApiClient.cancelOrder(
        contractId: anyNamed('contractId'),
        tableUseId: anyNamed('tableUseId'),
        body: anyNamed('body'),
      ),).thenAnswer((_) async {});

      await repository.cancelOrder('use1', orderItemIds: ['i1', 'i2']);

      verify(mockApiClient.cancelOrder(
        contractId: 'contract1',
        tableUseId: 'use1',
        body: anyNamed('body'),
      ),).called(1);
    });
  });
}
