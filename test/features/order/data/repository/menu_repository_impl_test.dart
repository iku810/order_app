import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_app/features/order/data/dto/response/menu_response.dart';
import 'package:order_app/features/order/data/repository/menu_repository_impl.dart';
import 'package:order_app/features/order/domain/menu.dart';
import 'package:order_app/shared/auth/domain/contract_id.dart';

import '../../../../mocks.mocks.dart';

const _contractId = ContractId('contract1');
const _storeId = 'store1';

PriceResponse _makePrice({
  String taxType = 'normal',
  String amount = '800',
  String tax = 'include',
  bool primary = true,
}) =>
    PriceResponse(
      taxRate: 10,
      taxType: taxType,
      amount: amount,
      tax: tax,
      primary: primary,
    );

MenuResponse _makeMenuResponse({
  String? applyDatetime,
  String taxType = 'normal',
  String tax = 'include',
  String amount = '800',
}) =>
    MenuResponse(
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
      prices: [_makePrice(taxType: taxType, amount: amount, tax: tax)],
      applyDatetime: applyDatetime,
    );

void main() {
  late MockApiClient mockApiClient;
  late MenuRepositoryImpl repository;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = MenuRepositoryImpl(mockApiClient, _contractId);
  });

  group('MenuRepositoryImpl.getStoreMenus', () {
    test('正常系: MenuResponseがMenuドメインに変換される', () async {
      when(mockApiClient.getStoreMenus(
        contractId: anyNamed('contractId'),
        storeId: anyNamed('storeId'),
        page: anyNamed('page'),
      )).thenAnswer((_) async => [_makeMenuResponse()]);

      final result = await repository.getStoreMenus(_storeId);

      expect(result.length, 1);
      expect(result.first.name, 'ラーメン');
      expect(result.first.primaryPrice.amount, 800);
      expect(result.first.primaryPrice.taxType, TaxType.normal);
      expect(result.first.primaryPrice.tax, Tax.included);
    });

    test('applyDatetimeがnullの場合はnullが返る', () async {
      when(mockApiClient.getStoreMenus(
        contractId: anyNamed('contractId'),
        storeId: anyNamed('storeId'),
        page: anyNamed('page'),
      )).thenAnswer((_) async => [_makeMenuResponse()]);

      final result = await repository.getStoreMenus(_storeId);

      expect(result.first.applyDatetime, isNull);
    });

    test('applyDatetimeが設定されている場合はDateTimeに変換される', () async {
      when(mockApiClient.getStoreMenus(
        contractId: anyNamed('contractId'),
        storeId: anyNamed('storeId'),
        page: anyNamed('page'),
      )).thenAnswer(
        (_) async => [_makeMenuResponse(applyDatetime: '2024-06-01T00:00:00')],
      );

      final result = await repository.getStoreMenus(_storeId);

      expect(result.first.applyDatetime, DateTime.parse('2024-06-01T00:00:00'));
    });

    test('taxTypeが"reduced"の場合はTaxType.reducedに変換される', () async {
      when(mockApiClient.getStoreMenus(
        contractId: anyNamed('contractId'),
        storeId: anyNamed('storeId'),
        page: anyNamed('page'),
      )).thenAnswer(
        (_) async => [_makeMenuResponse(taxType: 'reduced')],
      );

      final result = await repository.getStoreMenus(_storeId);

      expect(result.first.primaryPrice.taxType, TaxType.reduced);
    });

    test('未知のtaxTypeはExceptionが発生する', () async {
      when(mockApiClient.getStoreMenus(
        contractId: anyNamed('contractId'),
        storeId: anyNamed('storeId'),
        page: anyNamed('page'),
      )).thenAnswer(
        (_) async => [_makeMenuResponse(taxType: 'unknown')],
      );

      expect(
        () async => repository.getStoreMenus(_storeId),
        throwsException,
      );
    });

    test('taxが"exclude"の場合はTax.excludedに変換される', () async {
      when(mockApiClient.getStoreMenus(
        contractId: anyNamed('contractId'),
        storeId: anyNamed('storeId'),
        page: anyNamed('page'),
      )).thenAnswer(
        (_) async => [_makeMenuResponse(tax: 'exclude')],
      );

      final result = await repository.getStoreMenus(_storeId);

      expect(result.first.primaryPrice.tax, Tax.excluded);
    });

    test('amountが数値に変換できない場合はExceptionが発生する', () async {
      when(mockApiClient.getStoreMenus(
        contractId: anyNamed('contractId'),
        storeId: anyNamed('storeId'),
        page: anyNamed('page'),
      )).thenAnswer(
        (_) async => [_makeMenuResponse(amount: 'invalid')],
      );

      expect(
        () async => repository.getStoreMenus(_storeId),
        throwsException,
      );
    });
  });
}
