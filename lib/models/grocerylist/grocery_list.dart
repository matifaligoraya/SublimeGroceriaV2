import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_recipe.dart';

part 'grocery_list.freezed.dart';
part 'grocery_list.g.dart';

@freezed
class GroceryList with _$GroceryList {
  factory GroceryList({
    int? listId,
    String? listName,
    String? mobileID,
    int? userId,
    String? userName,
    String? ownerEmail,
    DateTime? createdDate,
    DateTime? updatedDate,
    int? totalItems,
    int? pendingItemsCount,
    int? sharedUserCount,
    bool? isSharedList,
    List<GRecipe>? gRecipe,
  }) = _GroceryList;

  factory GroceryList.withDefaults({
    int? listId,
    String? listName,
    String? mobileID,
    int? userId,
    String? userName,
    String? ownerEmail,
    DateTime? updatedDate,
    int? totalItems,
    int? pendingItemsCount,
    int? sharedUserCount,
    bool? isSharedList,
    List<GRecipe>? gRecipe,
  }) {
    return GroceryList(
      listId: listId,
      listName: listName,
      mobileID: mobileID,
      userId: userId,
      userName: userName,
      ownerEmail: ownerEmail,
      createdDate: DateTime(2022, 1, 1), // Hardcoded default
      updatedDate: updatedDate ?? DateTime(2022, 1, 2), // Hardcoded default
      totalItems: totalItems,
      pendingItemsCount: pendingItemsCount,
      sharedUserCount: sharedUserCount,
      isSharedList: isSharedList,
      gRecipe: gRecipe,
    );
  }

  factory GroceryList.fromJson(Map<String, dynamic> json) =>
      _$GroceryListFromJson(json);
}
