import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/order/data/dto/response/order_result_response.dart';
import 'package:order_app/features/order/data/repository/order_repository_impl.dart';
import 'package:order_app/features/order/domain/menu.dart';
import 'package:order_app/features/order/domain/order_item.dart';
import 'package:order_app/shared/auth/domain/contract_id.dart';

import '../../../../mocks.mocks.dart';

void main() {
  late MockApiClient mockApiClient;
  late OrderRepositoryImpl repository;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = OrderRepositoryImpl(mockApiClient, const ContractId('contract1'));
  });

  test('OrderItemをOrderRequestに変換してcreateOrderが呼ばれる', () async {
    when(mockApiClient.createOrder(
      contractId: anyNamed('contractId'),
      tableUseId: anyNamed('tableUseId'),
      body: anyNamed('body'),
    ),).thenAnswer(
      (_) async => const OrderResultResponse(
        orderId: 'o1',
        ordered: '2024-01-01T00:00:00+09:00',
        tableUseId: 'use1',
        items: [],
      ),
    );

    await repository.createOrder(
      tableUseId: 'use1',
      items: [
        const OrderItem(
          menuId: 'm1',
          quantity: 2,
          menuType: 'normal',
          name: 'ラーメン',
          sellingPrice: SellingPrice(
            amount: 800,
            tax: Tax.included,
            taxRate: 10,
            taxType: TaxType.normal,
          ),
        ),
      ],
    );

    verify(mockApiClient.createOrder(
      contractId: 'contract1',
      tableUseId: 'use1',
      body: anyNamed('body'),
    ),).called(1);
  });
}
