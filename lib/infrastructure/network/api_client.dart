import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/order/data/dto/request/order_request.dart';
import '../../features/order/data/dto/response/menu_response.dart';
import '../../features/order/data/dto/response/order_result_response.dart';
import '../../features/store/data/dto/response/store_response.dart';
import '../../shared/table/data/dto/request/cancel_order_request.dart';
import '../../shared/table/data/dto/request/check_in_request.dart';
import '../../shared/table/data/dto/request/checkout_request.dart';
import '../../shared/table/data/dto/response/table_use_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://api.smaregi.dev/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  // 店舗一覧取得
  @GET('{contractId}/waiter/stores')
  Future<List<StoreResponse>> getStores({
    @Path('contractId') required String contractId,
    @Query('status') String? status,
    @Query('page') int? page,
  });

  // 店舗取得
  @GET('{contractId}/waiter/stores/{storeId}')
  Future<StoreResponse> getStore({
    @Path('contractId') required String contractId,
    @Path('storeId') required String storeId,
    @Query('with_tables') String? withTables,
  });

  // 店舗のメニュー一覧取得
  @GET('{contractId}/waiter/stores/{storeId}/menus')
  Future<List<MenuResponse>> getStoreMenus({
    @Path('contractId') required String contractId,
    @Path('storeId') required String storeId,
    @Query('page') int? page,
  });

  // テーブル利用履歴一覧取得
  @GET('{contractId}/waiter/table_uses')
  Future<List<TableUseResponse>> getTableUses({
    @Path('contractId') required String contractId,
    @Query('store_id') String? storeId,
    @Query('status') String? status,
    @Query('page') int? page,
  });

  // テーブル利用履歴取得
  @GET('{contractId}/waiter/table_uses/{tableUseId}')
  Future<TableUseResponse> getTableUse({
    @Path('contractId') required String contractId,
    @Path('tableUseId') required String tableUseId,
  });

  // チェックイン
  @POST('{contractId}/waiter/table_uses')
  Future<TableUseResponse> checkIn({
    @Path('contractId') required String contractId,
    @Body() required CheckInRequest body,
  });

  // チェックアウト
  @PUT('{contractId}/waiter/table_uses/{tableUseId}/checkout')
  Future<void> checkout({
    @Path('contractId') required String contractId,
    @Path('tableUseId') required String tableUseId,
    @Body() required CheckoutRequest body,
  });

  // キャンセル
  @PUT('{contractId}/waiter/table_uses/{tableUseId}/cancel')
  Future<void> cancelTableUse({
    @Path('contractId') required String contractId,
    @Path('tableUseId') required String tableUseId,
  });

  // 注文
  @POST('{contractId}/waiter/table_uses/{tableUseId}/orders')
  Future<OrderResultResponse> createOrder({
    @Path('contractId') required String contractId,
    @Path('tableUseId') required String tableUseId,
    @Body() required OrderRequest body,
  });

  // 注文キャンセル
  @PUT('{contractId}/waiter/table_uses/{tableUseId}/orders/cancel')
  Future<void> cancelOrder({
    @Path('contractId') required String contractId,
    @Path('tableUseId') required String tableUseId,
    @Body() required CancelOrderRequest body,
  });
}
