import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutration.freezed.dart';
part 'nutration.g.dart';

@freezed
class Nutration with _$Nutration {
  factory Nutration({
    required String calories,
    required String serving_size_g,
    required String fat_total_g,
    required String fat_saturated_g,
    required String protein_g,
    required String sodium_mg,
    required String potassium_mg,
    required String cholesterol_mg,
    required String fiber_g,
    required String sugar_g,
    required String carbohydrates_total_g,
  }) = _Nutration;

  factory Nutration.fromJson(Map<String, dynamic> json) =>
      _$NutrationFromJson(json);
}
