// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_result_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderResultResponse _$OrderResultResponseFromJson(Map<String, dynamic> json) =>
    OrderResultResponse(
      orderId: json['orderId'] as String,
      ordered: json['ordered'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              OrderResultItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      tableUseId: json['tableUseId'] as String,
    );

Map<String, dynamic> _$OrderResultResponseToJson(
        OrderResultResponse instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'ordered': instance.ordered,
      'items': instance.items,
      'tableUseId': instance.tableUseId,
    };

OrderResultItemResponse _$OrderResultItemResponseFromJson(
        Map<String, dynamic> json) =>
    OrderResultItemResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      menuId: json['menuId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      menuType: json['menuType'] as String,
      servedAt: json['servedAt'] as String?,
      memo: json['memo'] as String?,
    );

Map<String, dynamic> _$OrderResultItemResponseToJson(
        OrderResultItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'servedAt': instance.servedAt,
      'memo': instance.memo,
      'menuId': instance.menuId,
      'quantity': instance.quantity,
      'menuType': instance.menuType,
    };
