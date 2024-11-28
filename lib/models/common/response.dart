import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  final bool isDic;
  final bool isList;
  final int statusCode;
  final String? contentType;
  final String? message;
  final T? data;
  final List<String>? errors;
  final Map<String, dynamic>? userMeta;
  final Map<String, dynamic>? masterRecord;

  ApiResponse({
    required this.isDic,
    required this.isList,
    required this.statusCode,
    this.contentType,
    this.message,
    this.data,
    this.errors,
    this.userMeta,
    this.masterRecord,
  });

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) {
    return _$ApiResponseFromJson(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T? value) toJsonT) {
    return _$ApiResponseToJson(this, toJsonT);
  }
}
