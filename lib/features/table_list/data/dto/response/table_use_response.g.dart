// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_use_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableUseResponse _$TableUseResponseFromJson(Map<String, dynamic> json) =>
    TableUseResponse(
      id: json['id'] as String,
      storeId: json['storeId'] as String,
      tables: (json['tables'] as List<dynamic>)
          .map((e) => TableDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      number: (json['number'] as num).toInt(),
      status: json['status'] as String,
      started: json['started'] as String,
      customerGroups: (json['customerGroups'] as List<dynamic>)
          .map((e) => CustomerGroupResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: (json['quantity'] as num).toInt(),
      tableChargePerPerson: json['tableChargePerPerson'] as String,
      serviceChargeRate: (json['serviceChargeRate'] as num).toInt(),
      totalPrice: json['totalPrice'] as String,
      uuid: json['uuid'] as String,
      ended: json['ended'] as String?,
      tempTransactionHeadId: json['tempTransactionHeadId'] as String?,
      reservationId: json['reservationId'] as String?,
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) =>
              OrderInTableUseResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TableUseResponseToJson(TableUseResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'tables': instance.tables,
      'number': instance.number,
      'status': instance.status,
      'started': instance.started,
      'ended': instance.ended,
      'customerGroups': instance.customerGroups,
      'quantity': instance.quantity,
      'tableChargePerPerson': instance.tableChargePerPerson,
      'serviceChargeRate': instance.serviceChargeRate,
      'totalPrice': instance.totalPrice,
      'tempTransactionHeadId': instance.tempTransactionHeadId,
      'reservationId': instance.reservationId,
      'uuid': instance.uuid,
      'orders': instance.orders,
    };

TableDataResponse _$TableDataResponseFromJson(Map<String, dynamic> json) =>
    TableDataResponse(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$TableDataResponseToJson(TableDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CustomerGroupResponse _$CustomerGroupResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerGroupResponse(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CustomerGroupResponseToJson(
        CustomerGroupResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

OrderInTableUseResponse _$OrderInTableUseResponseFromJson(
        Map<String, dynamic> json) =>
    OrderInTableUseResponse(
      orderId: json['orderId'] as String,
      ordered: json['ordered'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              OrderItemInTableUseResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      tableUseId: json['tableUseId'] as String,
    );

Map<String, dynamic> _$OrderInTableUseResponseToJson(
        OrderInTableUseResponse instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'ordered': instance.ordered,
      'items': instance.items,
      'tableUseId': instance.tableUseId,
    };

OrderItemInTableUseResponse _$OrderItemInTableUseResponseFromJson(
        Map<String, dynamic> json) =>
    OrderItemInTableUseResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      menuId: json['menuId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      menuType: json['menuType'] as String,
      servedAt: json['servedAt'] as String?,
      memo: json['memo'] as String?,
    );

Map<String, dynamic> _$OrderItemInTableUseResponseToJson(
        OrderItemInTableUseResponse instance) =>
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
