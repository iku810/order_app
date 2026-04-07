import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@Freezed(toJson: false)
abstract class OrderResponse with _$OrderResponse {
  const factory OrderResponse({
    required List<OrderItem> items,
    required OrderPrints orderPrints,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}

@Freezed(toJson: false)
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String menuId,
    required int quantity,
    required String menuType,
    required String name,
    required SellingPrice sellingPrice,
    required Discount discount,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}

@Freezed(toJson: false)
abstract class SellingPrice with _$SellingPrice {
  const factory SellingPrice({
    required String amount,
    required String tax,
    required int taxRate,
    required String taxType,
  }) = _SellingPrice;

  factory SellingPrice.fromJson(Map<String, dynamic> json) =>
      _$SellingPriceFromJson(json);
}

@Freezed(toJson: false)
abstract class Discount with _$Discount {
  const factory Discount({
    required String rate,
  }) = _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) =>
      _$DiscountFromJson(json);
}

@Freezed(toJson: false)
abstract class OrderPrints with _$OrderPrints {
  const factory OrderPrints({
    required bool kitchenTicket,
    required bool orderSlip,
  }) = _OrderPrints;

  factory OrderPrints.fromJson(Map<String, dynamic> json) =>
      _$OrderPrintsFromJson(json);
}
