import 'package:freezed_annotation/freezed_annotation.dart';

part 'grocery_recipe.freezed.dart';
part 'grocery_recipe.g.dart';

@freezed
class GRecipe with _$GRecipe {
  factory GRecipe({
    int? id,
    int? recipeId,
    String? recipe,
    int? groceryListId,
    String? excludedItem,
    int? serving,
  }) = _GRecipe;

  factory GRecipe.fromJson(Map<String, dynamic> json) =>
      _$GRecipeFromJson(json);
}
