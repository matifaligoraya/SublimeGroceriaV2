// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sgitem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SgItemImpl _$$SgItemImplFromJson(Map<String, dynamic> json) => _$SgItemImpl(
      itemId: (json['itemId'] as num?)?.toInt(),
      itemName: json['itemName'] as String?,
      itemKeyword: json['itemKeyword'] as String?,
      quantityTypeId: (json['quantityTypeId'] as num?)?.toInt(),
      itemCategoryId: (json['itemCategoryId'] as num?)?.toInt(),
      categoryName: json['categoryName'] as String?,
      typeName: json['typeName'] as String?,
      abbrivation: json['abbrivation'] as String?,
      unitName: json['unitName'] as String?,
      couldBeDouble: json['couldBeDouble'] as bool?,
      fileName: json['fileName'] as String?,
      fileType: json['fileType'] as String?,
      dataFiles: json['dataFiles'] as String?,
      description: json['description'] as String?,
      itemNutritionId: (json['itemNutritionId'] as num?)?.toInt(),
      moq: (json['moq'] as num?)?.toInt(),
      isActive: json['isActive'] as bool?,
      nutration: (json['nutration'] as List<dynamic>)
          .map((e) => Nutration.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SgItemImplToJson(_$SgItemImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'itemKeyword': instance.itemKeyword,
      'quantityTypeId': instance.quantityTypeId,
      'itemCategoryId': instance.itemCategoryId,
      'categoryName': instance.categoryName,
      'typeName': instance.typeName,
      'abbrivation': instance.abbrivation,
      'unitName': instance.unitName,
      'couldBeDouble': instance.couldBeDouble,
      'fileName': instance.fileName,
      'fileType': instance.fileType,
      'dataFiles': instance.dataFiles,
      'description': instance.description,
      'itemNutritionId': instance.itemNutritionId,
      'moq': instance.moq,
      'isActive': instance.isActive,
      'nutration': instance.nutration,
    };
