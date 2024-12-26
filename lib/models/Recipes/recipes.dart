import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes.freezed.dart';
part 'recipes.g.dart';

@freezed
class Recipes with _$Recipes {
  const factory Recipes({
    required int id,
    required String title,
    required String directions,
    required String imgUrl,
    required int categoryId,
    required String categoryName,
    required List<Ingredient> ingredientList,
    required String fileName,
    required String fileType,
    required String dataFiles,
    required String tags,
    required String time,
    required String description,
    required int serving,
  }) = _Recipes;

  factory Recipes.fromJson(Map<String, dynamic> json) =>
      _$RecipesFromJson(json);
}

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required int id,
    required String qty,
    required String actQty,
    required int itemid,
    required String itemName,
    required String fileName,
    required String fileType,
    required String dataFiles,
    required int quantityTypeId,
    required String quantityType,
    required String abrivation,
    required bool couldBeDouble,
    required int categoryid,
    required String itemCategory,
    required int moq,
    required String comments,
    required String quantityGuaid,
    required bool isServingEffected,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
