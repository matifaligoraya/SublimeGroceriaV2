import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sublime_groceria/models/item/nutration.dart';

part 'sgitem.freezed.dart';
part 'sgitem.g.dart';

@freezed
class SgItem with _$SgItem {
  factory SgItem({
    int? itemId,
    String? itemName,
    String? itemKeyword,
    int? quantityTypeId,
    int? itemCategoryId,
    String? categoryName,
    String? typeName,
    String? abbrivation,
    String? unitName,
    bool? couldBeDouble,
    String? fileName,
    String? fileType,
    String? dataFiles,
    String? description,
    int? itemNutritionId,
    int? moq,
    bool? isActive,
    Nutration? nutration, // Changed to a list
  }) = _SgItem;

  factory SgItem.fromJson(Map<String, dynamic> json) => _$SgItemFromJson(json);
}
