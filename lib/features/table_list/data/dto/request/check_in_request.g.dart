// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckInRequest _$CheckInRequestFromJson(Map<String, dynamic> json) =>
    CheckInRequest(
      storeId: json['storeId'] as String,
      tables: (json['tables'] as List<dynamic>)
          .map((e) => TableIdRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      number: (json['number'] as num).toInt(),
      customerGroups: (json['customerGroups'] as List<dynamic>?)
          ?.map(
              (e) => CustomerGroupIdRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      staffId: json['staffId'] as String?,
      tableChargePerPerson: json['tableChargePerPerson'] as String?,
      serviceChargeRate: (json['serviceChargeRate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CheckInRequestToJson(CheckInRequest instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'tables': instance.tables,
      'number': instance.number,
      'customerGroups': instance.customerGroups,
      'staffId': instance.staffId,
      'tableChargePerPerson': instance.tableChargePerPerson,
      'serviceChargeRate': instance.serviceChargeRate,
    };

TableIdRequest _$TableIdRequestFromJson(Map<String, dynamic> json) =>
    TableIdRequest(
      id: json['id'] as String,
    );

Map<String, dynamic> _$TableIdRequestToJson(TableIdRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CustomerGroupIdRequest _$CustomerGroupIdRequestFromJson(
        Map<String, dynamic> json) =>
    CustomerGroupIdRequest(
      id: json['id'] as String,
    );

Map<String, dynamic> _$CustomerGroupIdRequestToJson(
        CustomerGroupIdRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
