import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/order/application/create_order_usecase.dart';
import 'package:order_app/features/order/domain/menu.dart';
import 'package:order_app/features/order/domain/order_item.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockOrderRepository mockRepository;
  late CreateOrderUsecase usecase;

  setUp(() {
    mockRepository = MockOrderRepository();
    usecase = CreateOrderUsecase(mockRepository);
  });

  const item = OrderItem(
    menuId: 'm1',
    quantity: 2,
    menuType: 'food',
    name: 'ラーメン',
    sellingPrice: SellingPrice(
      amount: 800,
      tax: Tax.included,
      taxRate: 10,
      taxType: TaxType.normal,
    ),
  );

  test('kitchenTicket=true, orderSlip=true でcreateOrderが呼ばれる', () async {
    when(
      mockRepository.createOrder(
        tableUseId: anyNamed('tableUseId'),
        items: anyNamed('items'),
        kitchenTicket: anyNamed('kitchenTicket'),
        orderSlip: anyNamed('orderSlip'),
      ),
    ).thenAnswer((_) async {});

    await usecase.execute('use1', items: [item]);

    verify(
      mockRepository.createOrder(
        tableUseId: 'use1',
        items: [item],
        kitchenTicket: true,
        orderSlip: true,
      ),
    ).called(1);
  });
}
