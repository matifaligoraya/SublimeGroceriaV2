import 'package:freezed_annotation/freezed_annotation.dart';

part 'religion.freezed.dart'; // Freezed generator
part 'religion.g.dart'; // Freezed generator

@freezed
class Religion with _$Religion {
  const factory Religion({
    required int id,
    required String name,
  }) = _Religion;

  factory Religion.fromJson(Map<String, dynamic> json) =>
      _$ReligionFromJson(json);
}
