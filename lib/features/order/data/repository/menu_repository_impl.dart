import '../../../../infrastructure/network/api_client.dart';
import '../../../../shared/auth/domain/contract_id.dart';
import '../../domain/menu.dart';
import '../../domain/repository/menu_repository.dart';
import '../dto/response/menu_response.dart';

class MenuRepositoryImpl implements MenuRepository {
  MenuRepositoryImpl(this._apiClient, this._contractId);

  final ApiClient _apiClient;

  final ContractId _contractId;

  @override
  Future<List<Menu>> getStoreMenus(String storeId, {int? page}) async {
    final responses = await _apiClient.getStoreMenus(
      contractId: _contractId.value,
      storeId: storeId,
      page: page,
    );
    return responses.map(_toMenuDomain).toList();
  }

  Menu _toMenuDomain(MenuResponse dto) => Menu.create(
        id: dto.id,
        name: dto.name,
        kana: dto.kana,
        type: dto.type,
        categoryId: dto.categoryId,
        note: dto.note,
        sortNo: dto.sortNo,
        applyDatetime: dto.applyDatetime != null
            ? DateTime.parse(dto.applyDatetime!)
            : null,
        timeLimit: dto.timeLimit,
        preTimeLimitMinutesLeft: dto.preTimeLimitMinutesLeft,
        customId: dto.customId,
        isOpenPrice: dto.isOpenPrice,
        createdIn: dto.createdIn,
        toppingGroupId: dto.toppingGroupId,
        prices: dto.prices
            .map(
              (p) => Price(
                taxRate: p.taxRate,
                taxType: _toTaxType(p.taxType),
                amount: _toInt(p.amount),
                tax: _toTax(p.tax),
                primary: p.primary,
              ),
            )
            .toList(),
      );

  TaxType _toTaxType(String taxType) {
    switch (taxType) {
      case 'normal':
        return TaxType.normal;
      case 'reduced':
        return TaxType.reduced;
      default:
        throw Exception('Unknown tax type: $taxType');
    }
  }

  Tax _toTax(String tax) {
    switch (tax) {
      case 'include':
        return Tax.include;
      case 'exclude':
        return Tax.exclude;
      case 'none':
        return Tax.none;
      default:
        throw Exception('Unknown tax: $tax');
    }
  }

  int _toInt(String amount) {
    try {
      return int.parse(amount);
    } catch (e) {
      throw Exception('Invalid amount: $amount');
    }
  }
}
