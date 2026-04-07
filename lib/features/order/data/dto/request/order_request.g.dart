// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRequest _$OrderRequestFromJson(Map<String, dynamic> json) => OrderRequest(
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderPrints: OrderPrintsRequest.fromJson(
          json['orderPrints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderRequestToJson(OrderRequest instance) =>
    <String, dynamic>{
      'items': instance.items,
      'orderPrints': instance.orderPrints,
    };

OrderItemRequest _$OrderItemRequestFromJson(Map<String, dynamic> json) =>
    OrderItemRequest(
      menuId: json['menuId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      menuType: json['menuType'] as String,
      name: json['name'] as String,
      sellingPrice: SellingPriceRequest.fromJson(
          json['sellingPrice'] as Map<String, dynamic>),
      discount: json['discount'] == null
          ? null
          : DiscountRequest.fromJson(json['discount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemRequestToJson(OrderItemRequest instance) =>
    <String, dynamic>{
      'menuId': instance.menuId,
      'quantity': instance.quantity,
      'menuType': instance.menuType,
      'name': instance.name,
      'sellingPrice': instance.sellingPrice,
      'discount': instance.discount,
    };

SellingPriceRequest _$SellingPriceRequestFromJson(Map<String, dynamic> json) =>
    SellingPriceRequest(
      amount: json['amount'] as String,
      tax: json['tax'] as String,
      taxRate: (json['taxRate'] as num).toInt(),
      taxType: json['taxType'] as String,
    );

Map<String, dynamic> _$SellingPriceRequestToJson(
        SellingPriceRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'tax': instance.tax,
      'taxRate': instance.taxRate,
      'taxType': instance.taxType,
    };

DiscountRequest _$DiscountRequestFromJson(Map<String, dynamic> json) =>
    DiscountRequest(
      rate: json['rate'] as String,
    );

Map<String, dynamic> _$DiscountRequestToJson(DiscountRequest instance) =>
    <String, dynamic>{
      'rate': instance.rate,
    };

OrderPrintsRequest _$OrderPrintsRequestFromJson(Map<String, dynamic> json) =>
    OrderPrintsRequest(
      kitchenTicket: json['kitchenTicket'] as bool,
      orderSlip: json['orderSlip'] as bool,
    );

Map<String, dynamic> _$OrderPrintsRequestToJson(OrderPrintsRequest instance) =>
    <String, dynamic>{
      'kitchenTicket': instance.kitchenTicket,
      'orderSlip': instance.orderSlip,
    };
