// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) =>
    _OrderResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderPrints:
          OrderPrints.fromJson(json['orderPrints'] as Map<String, dynamic>),
    );

_OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => _OrderItem(
      menuId: json['menuId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      menuType: json['menuType'] as String,
      name: json['name'] as String,
      sellingPrice:
          SellingPrice.fromJson(json['sellingPrice'] as Map<String, dynamic>),
      discount: Discount.fromJson(json['discount'] as Map<String, dynamic>),
    );

_SellingPrice _$SellingPriceFromJson(Map<String, dynamic> json) =>
    _SellingPrice(
      amount: json['amount'] as String,
      tax: json['tax'] as String,
      taxRate: (json['taxRate'] as num).toInt(),
      taxType: json['taxType'] as String,
    );

_Discount _$DiscountFromJson(Map<String, dynamic> json) => _Discount(
      rate: json['rate'] as String,
    );

_OrderPrints _$OrderPrintsFromJson(Map<String, dynamic> json) => _OrderPrints(
      kitchenTicket: json['kitchenTicket'] as bool,
      orderSlip: json['orderSlip'] as bool,
    );
