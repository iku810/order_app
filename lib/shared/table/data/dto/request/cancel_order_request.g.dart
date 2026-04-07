// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelOrderRequest _$CancelOrderRequestFromJson(Map<String, dynamic> json) =>
    CancelOrderRequest(
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      orderPrints: CancelOrderPrintsRequest.fromJson(
          json['orderPrints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CancelOrderRequestToJson(CancelOrderRequest instance) =>
    <String, dynamic>{
      'orderItems': instance.orderItems,
      'orderPrints': instance.orderPrints,
    };

CancelOrderPrintsRequest _$CancelOrderPrintsRequestFromJson(
        Map<String, dynamic> json) =>
    CancelOrderPrintsRequest(
      kitchenTicket: json['kitchenTicket'] as bool,
      orderSlip: json['orderSlip'] as bool,
    );

Map<String, dynamic> _$CancelOrderPrintsRequestToJson(
        CancelOrderPrintsRequest instance) =>
    <String, dynamic>{
      'kitchenTicket': instance.kitchenTicket,
      'orderSlip': instance.orderSlip,
    };
