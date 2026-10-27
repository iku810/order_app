// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreResponse _$StoreResponseFromJson(Map<String, dynamic> json) =>
    StoreResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      startOfDay: json['startOfDay'] as String,
      tablesCount: (json['tablesCount'] as num).toInt(),
      created: json['created'] as String,
      posStoreId: json['posStoreId'] as String,
      suspend: json['suspend'] as String?,
      tables: (json['tables'] as List<dynamic>?)
          ?.map((e) => StoreTableResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StoreResponseToJson(StoreResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startOfDay': instance.startOfDay,
      'tablesCount': instance.tablesCount,
      'suspend': instance.suspend,
      'created': instance.created,
      'posStoreId': instance.posStoreId,
      'tables': instance.tables,
    };

StoreTableResponse _$StoreTableResponseFromJson(Map<String, dynamic> json) =>
    StoreTableResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String?,
      sortNo: (json['sortNo'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StoreTableResponseToJson(StoreTableResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'sortNo': instance.sortNo,
    };
