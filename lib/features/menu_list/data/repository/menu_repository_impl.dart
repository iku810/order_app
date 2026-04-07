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

  Menu _toMenuDomain(MenuResponse dto) => Menu(
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
                taxType: p.taxType,
                amount: p.amount,
                tax: p.tax,
                primary: p.primary,
              ),
            )
            .toList(),
      );
}
