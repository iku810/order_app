import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/payment/data/repository/payment_repository_impl.dart';
import 'package:order_app/shared/auth/domain/contract_id.dart';
import 'package:order_app/shared/table/data/dto/response/table_use_detail_response.dart';

import '../../../../mocks.mocks.dart';

void main() {
  late MockApiClient mockApiClient;
  late PaymentRepositoryImpl repository;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = PaymentRepositoryImpl(
      mockApiClient,
      const ContractId('contract1'),
    );
  });

  TableUseDetailResponse buildResponse({
    required List<OrderItemInTableUseResponse> items,
  }) {
    return TableUseDetailResponse(
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
      totalPrice: '800',
      uuid: 'uuid1',
      orders: [
        OrderInTableUseResponse(
          orderId: 'o1',
          ordered: '2024-01-01T00:00:00+09:00',
          tableUseId: 'use1',
          items: items,
        ),
      ],
    );
  }

  test('canceledステータスのアイテムは除外される', () async {
    when(mockApiClient.getTableUse(
      contractId: 'contract1',
      tableUseId: 'use1',
    ),).thenAnswer(
      (_) async => buildResponse(
        items: [
          const OrderItemInTableUseResponse(
            id: '1',
            name: 'オムライス',
            status: 'canceled',
            menuId: 'm1',
            quantity: 1,
            menuType: 'normal',
            sellingPrice: SellingPriceInOrderResponse(
              taxRate: 10,
              taxType: 'normal',
              amount: '1000',
              tax: 'included',
            ),
          ),
          const OrderItemInTableUseResponse(
            id: '2',
            name: 'カレー',
            status: 'waiting',
            menuId: 'm2',
            quantity: 1,
            menuType: 'normal',
            sellingPrice: SellingPriceInOrderResponse(
              taxRate: 10,
              taxType: 'normal',
              amount: '800',
              tax: 'included',
            ),
          ),
        ],
      ),
    );

    final result = await repository.getPaymentSummary('use1');

    expect(result.items.length, 1);
    expect(result.items.first.name, 'カレー');
  });
}
