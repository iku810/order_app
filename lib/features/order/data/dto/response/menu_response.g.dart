// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuResponse _$MenuResponseFromJson(Map<String, dynamic> json) => MenuResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      kana: json['kana'] as String,
      type: json['type'] as String,
      categoryId: json['categoryId'] as String,
      sortNo: (json['sortNo'] as num).toInt(),
      timeLimit: (json['timeLimit'] as num).toInt(),
      preTimeLimitMinutesLeft: (json['preTimeLimitMinutesLeft'] as num).toInt(),
      isOpenPrice: json['isOpenPrice'] as bool,
      createdIn: json['createdIn'] as String,
      prices: (json['prices'] as List<dynamic>)
          .map((e) => PriceResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String?,
      applyDatetime: json['applyDatetime'] as String?,
      customId: json['customId'] as String?,
      toppingGroupId: json['toppingGroupId'] as String?,
    );

Map<String, dynamic> _$MenuResponseToJson(MenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kana': instance.kana,
      'type': instance.type,
      'categoryId': instance.categoryId,
      'note': instance.note,
      'sortNo': instance.sortNo,
      'applyDatetime': instance.applyDatetime,
      'timeLimit': instance.timeLimit,
      'preTimeLimitMinutesLeft': instance.preTimeLimitMinutesLeft,
      'customId': instance.customId,
      'isOpenPrice': instance.isOpenPrice,
      'createdIn': instance.createdIn,
      'toppingGroupId': instance.toppingGroupId,
      'prices': instance.prices,
    };

PriceResponse _$PriceResponseFromJson(Map<String, dynamic> json) =>
    PriceResponse(
      taxRate: (json['taxRate'] as num).toInt(),
      taxType: json['taxType'] as String,
      amount: json['amount'] as String,
      tax: json['tax'] as String,
      primary: json['primary'] as bool,
    );

Map<String, dynamic> _$PriceResponseToJson(PriceResponse instance) =>
    <String, dynamic>{
      'taxRate': instance.taxRate,
      'taxType': instance.taxType,
      'amount': instance.amount,
      'tax': instance.tax,
      'primary': instance.primary,
    };
