import '../../features/order/domain/menu.dart';
import '../../features/order/domain/repository/menu_repository.dart';

class MockMenuRepository implements MenuRepository {
  static final _menus = [
    Menu.create(
      id: 'menu-001',
      name: '唐揚げ',
      kana: 'カラアゲ',
      type: 'food',
      categoryId: 'category-001',
      sortNo: 1,
      timeLimit: 0,
      preTimeLimitMinutesLeft: 0,
      isOpenPrice: false,
      createdIn: 'pos',
      prices: [
        const Price(
            taxRate: 10,
            taxType: TaxType.normal,
            amount: 500,
            tax: Tax.included,
            primary: true),
      ],
    ),
    Menu.create(
      id: 'menu-002',
      name: '枝豆',
      kana: 'エダマメ',
      type: 'food',
      categoryId: 'category-001',
      sortNo: 2,
      timeLimit: 0,
      preTimeLimitMinutesLeft: 0,
      isOpenPrice: false,
      createdIn: 'pos',
      prices: [
        const Price(
            taxRate: 10,
            taxType: TaxType.normal,
            amount: 300,
            tax: Tax.included,
            primary: true),
      ],
    ),
    Menu.create(
      id: 'menu-003',
      name: 'ポテトフライ',
      kana: 'ポテトフライ',
      type: 'food',
      categoryId: 'category-001',
      sortNo: 3,
      timeLimit: 0,
      preTimeLimitMinutesLeft: 0,
      isOpenPrice: false,
      createdIn: 'pos',
      prices: [
        const Price(
            taxRate: 10,
            taxType: TaxType.normal,
            amount: 400,
            tax: Tax.included,
            primary: true),
      ],
    ),
    Menu.create(
      id: 'menu-010',
      name: 'ビール(生)',
      kana: 'ビール(ナマ)',
      type: 'drink',
      categoryId: 'category-002',
      sortNo: 1,
      timeLimit: 0,
      preTimeLimitMinutesLeft: 0,
      isOpenPrice: false,
      createdIn: 'pos',
      prices: [
        const Price(
            taxRate: 10,
            taxType: TaxType.normal,
            amount: 600,
            tax: Tax.included,
            primary: true),
      ],
    ),
    Menu.create(
      id: 'menu-011',
      name: 'ハイボール',
      kana: 'ハイボール',
      type: 'drink',
      categoryId: 'category-002',
      sortNo: 2,
      timeLimit: 0,
      preTimeLimitMinutesLeft: 0,
      isOpenPrice: false,
      createdIn: 'pos',
      prices: [
        const Price(
            taxRate: 10,
            taxType: TaxType.normal,
            amount: 500,
            tax: Tax.included,
            primary: true),
      ],
    ),
    Menu.create(
      id: 'menu-012',
      name: 'コーラ',
      kana: 'コーラ',
      type: 'drink',
      categoryId: 'category-002',
      sortNo: 3,
      timeLimit: 0,
      preTimeLimitMinutesLeft: 0,
      isOpenPrice: false,
      createdIn: 'pos',
      prices: [
        const Price(
            taxRate: 10,
            taxType: TaxType.normal,
            amount: 300,
            tax: Tax.included,
            primary: true),
      ],
    ),
  ];

  @override
  Future<List<Menu>> getStoreMenus(String storeId, {int? page}) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return _menus;
  }
}
