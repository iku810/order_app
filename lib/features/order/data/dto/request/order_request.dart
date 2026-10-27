import 'package:json_annotation/json_annotation.dart';

part 'order_request.g.dart';

@JsonSerializable()
class OrderRequest {
  const OrderRequest({
    required this.items,
    required this.orderPrints,
  });

  factory OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestFromJson(json);

  final List<OrderItemRequest> items;
  final OrderPrintsRequest orderPrints;

  Map<String, dynamic> toJson() => _$OrderRequestToJson(this);
}

@JsonSerializable()
class OrderItemRequest {
  const OrderItemRequest({
    required this.menuId,
    required this.quantity,
    required this.menuType,
    required this.name,
    required this.sellingPrice,
    this.discount,
  });

  factory OrderItemRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderItemRequestFromJson(json);

  final String menuId;
  final int quantity;
  final String menuType;
  final String name;
  final SellingPriceRequest sellingPrice;
  final DiscountRequest? discount;

  Map<String, dynamic> toJson() {
    final json = _$OrderItemRequestToJson(this);
    if (discount == null) json.remove('discount');
    return json;
  }
}

@JsonSerializable()
class SellingPriceRequest {
  const SellingPriceRequest({
    required this.amount,
    required this.tax,
    required this.taxRate,
    required this.taxType,
  });

  factory SellingPriceRequest.fromJson(Map<String, dynamic> json) =>
      _$SellingPriceRequestFromJson(json);

  final String amount;
  final String tax;
  final int taxRate;
  final String taxType;

  Map<String, dynamic> toJson() => _$SellingPriceRequestToJson(this);
}

@JsonSerializable()
class DiscountRequest {
  const DiscountRequest({required this.rate});

  factory DiscountRequest.fromJson(Map<String, dynamic> json) =>
      _$DiscountRequestFromJson(json);

  final String rate;

  Map<String, dynamic> toJson() => _$DiscountRequestToJson(this);
}

@JsonSerializable()
class OrderPrintsRequest {
  const OrderPrintsRequest({
    required this.kitchenTicket,
    required this.orderSlip,
  });

  factory OrderPrintsRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderPrintsRequestFromJson(json);

  final bool kitchenTicket;
  final bool orderSlip;

  Map<String, dynamic> toJson() => _$OrderPrintsRequestToJson(this);
}
