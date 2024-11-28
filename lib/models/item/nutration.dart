import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutration.freezed.dart';
part 'nutration.g.dart';

@freezed
class Nutration with _$Nutration {
  factory Nutration({
    String? calories,
    String? serving_size_g,
    String? fat_total_g,
    String? fat_saturated_g,
    String? protein_g,
    String? sodium_mg,
    String? potassium_mg,
    String? cholesterol_mg,
    String? fiber_g,
    String? sugar_g,
    String? carbohydrates_total_g,
  }) = _Nutration;

  factory Nutration.fromJson(Map<String, dynamic> json) =>
      _$NutrationFromJson(json);
}
