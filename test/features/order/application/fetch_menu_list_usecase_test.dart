import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/order/application/fetch_menu_list_usecase.dart';
import 'package:order_app/features/order/domain/menu.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockMenuRepository mockRepository;
  late FetchMenuListUsecase usecase;

  setUp(() {
    mockRepository = MockMenuRepository();
    usecase = FetchMenuListUsecase(mockRepository);
  });

  test('storeIdを渡してgetStoreMenusが呼ばれ結果が返る', () async {
    final menus = [
      Menu.create(
        id: 'm1',
        name: 'ラーメン',
        kana: 'らーめん',
        type: 'food',
        categoryId: 'cat1',
        sortNo: 1,
        timeLimit: 0,
        preTimeLimitMinutesLeft: 0,
        isOpenPrice: false,
        createdIn: '2024-01-01',
        prices: [
          const Price(
            taxRate: 10,
            taxType: TaxType.normal,
            amount: 800,
            tax: Tax.included,
            primary: true,
          ),
        ],
      ),
    ];
    when(mockRepository.getStoreMenus('store1'))
        .thenAnswer((_) async => menus);

    final result = await usecase.execute('store1');

    expect(result, menus);
    verify(mockRepository.getStoreMenus('store1')).called(1);
  });
}
