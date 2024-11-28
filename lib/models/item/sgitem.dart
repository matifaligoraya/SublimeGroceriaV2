import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sublime_groceria/models/item/nutration.dart';

part 'sgitem.freezed.dart';
part 'sgitem.g.dart';

@freezed
class SgItem with _$SgItem {
  factory SgItem({
    required int? itemId,
    required String? itemName,
    required String? itemKeyword,
    required int? quantityTypeId,
    required int? itemCategoryId,
    required String? categoryName,
    required String? typeName,
    required String? abbrivation,
    required String? unitName,
    required bool? couldBeDouble,
    required String? fileName,
    required String? fileType,
    required String? dataFiles,
    required String? description,
    required int? itemNutritionId,
    required int? moq,
    required bool? isActive,
    required List<Nutration> nutration, // Changed to a list
  }) = _SgItem;

  factory SgItem.fromJson(Map<String, dynamic> json) => _$SgItemFromJson(json);
}
