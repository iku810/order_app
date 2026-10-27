// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_use_list_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableUseListItemResponse _$TableUseListItemResponseFromJson(
        Map<String, dynamic> json) =>
    TableUseListItemResponse(
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
    );

Map<String, dynamic> _$TableUseListItemResponseToJson(
        TableUseListItemResponse instance) =>
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
