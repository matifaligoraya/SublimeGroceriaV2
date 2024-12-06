// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GRecipeImpl _$$GRecipeImplFromJson(Map<String, dynamic> json) =>
    _$GRecipeImpl(
      id: (json['id'] as num?)?.toInt(),
      recipeId: (json['recipeId'] as num?)?.toInt(),
      recipe: json['recipe'] as String?,
      groceryListId: (json['groceryListId'] as num?)?.toInt(),
      excludedItem: json['excludedItem'] as String?,
      serving: (json['serving'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GRecipeImplToJson(_$GRecipeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipeId': instance.recipeId,
      'recipe': instance.recipe,
      'groceryListId': instance.groceryListId,
      'excludedItem': instance.excludedItem,
      'serving': instance.serving,
    };
