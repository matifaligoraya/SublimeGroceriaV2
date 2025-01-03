// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipesImpl _$$RecipesImplFromJson(Map<String, dynamic> json) =>
    _$RecipesImpl(
      id: (json['id'] as num?)?.toInt() ?? 0, // Default to 0 if null
      title: json['title'] as String? ?? '', // Default to empty string if null
      directions: json['directions'] as String? ??
          '', // Default to empty string if null
      imgUrl:
          json['imgUrl'] as String? ?? '', // Default to empty string if null
      categoryId:
          (json['categoryId'] as num?)?.toInt() ?? 0, // Default to 0 if null
      categoryName: json['categoryName'] as String? ??
          '', // Default to empty string if null
      ingredientList: (json['ingredientList'] as List<dynamic>?)
              ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [], // Default to empty list if null
      fileName:
          json['fileName'] as String? ?? '', // Default to empty string if null
      fileType:
          json['fileType'] as String? ?? '', // Default to empty string if null
      dataFiles:
          json['dataFiles'] as String? ?? '', // Default to empty string if null
      tags: json['tags'] as String? ?? '', // Default to empty string if null
      time: json['time'] as String? ?? '', // Default to empty string if null
      description: json['description'] as String? ??
          '', // Default to empty string if null
      serving: (json['serving'] as num?)?.toInt() ?? 0, // Default to 0 if null
    );

Map<String, dynamic> _$$RecipesImplToJson(_$RecipesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'directions': instance.directions,
      'imgUrl': instance.imgUrl,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'ingredientList': instance.ingredientList,
      'fileName': instance.fileName,
      'fileType': instance.fileType,
      'dataFiles': instance.dataFiles,
      'tags': instance.tags,
      'time': instance.time,
      'description': instance.description,
      'serving': instance.serving,
    };

_$IngredientImpl _$$IngredientImplFromJson(Map<String, dynamic> json) =>
    _$IngredientImpl(
      id: (json['id'] as num).toInt(),
      qty: json['qty'] as String,
      actQty: json['actQty'] as String,
      itemid: (json['itemid'] as num).toInt(),
      itemName: json['itemName'] as String,
      fileName: json['fileName'] as String,
      fileType: json['fileType'] as String,
      dataFiles: json['dataFiles'] as String,
      quantityTypeId: (json['quantityTypeId'] as num).toInt(),
      quantityType: json['quantityType'] as String,
      abrivation: json['abrivation'] as String,
      couldBeDouble: json['couldBeDouble'] as bool,
      categoryid: (json['categoryid'] as num).toInt(),
      itemCategory: json['itemCategory'] as String,
      moq: (json['moq'] as num).toInt(),
      comments: json['comments'] as String,
      quantityGuaid: json['quantityGuaid'] as String,
      isServingEffected: json['isServingEffected'] as bool,
    );

Map<String, dynamic> _$$IngredientImplToJson(_$IngredientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'actQty': instance.actQty,
      'itemid': instance.itemid,
      'itemName': instance.itemName,
      'fileName': instance.fileName,
      'fileType': instance.fileType,
      'dataFiles': instance.dataFiles,
      'quantityTypeId': instance.quantityTypeId,
      'quantityType': instance.quantityType,
      'abrivation': instance.abrivation,
      'couldBeDouble': instance.couldBeDouble,
      'categoryid': instance.categoryid,
      'itemCategory': instance.itemCategory,
      'moq': instance.moq,
      'comments': instance.comments,
      'quantityGuaid': instance.quantityGuaid,
      'isServingEffected': instance.isServingEffected,
    };
