// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cancel_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCancelRequest _$OrderCancelRequestFromJson(Map<String, dynamic> json) =>
    OrderCancelRequest(
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      orderPrints: OrderPrintsRequest.fromJson(
          json['orderPrints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderCancelRequestToJson(OrderCancelRequest instance) =>
    <String, dynamic>{
      'orderItems': instance.orderItems,
      'orderPrints': instance.orderPrints,
    };
