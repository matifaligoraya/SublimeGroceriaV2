// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponse<T>(
      isDic: json['isDic'] as bool,
      isList: json['isList'] as bool,
      statusCode: (json['statusCode'] as num).toInt(),
      contentType: json['contentType'] as String?,
      message: json['message'] as String?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userMeta: json['userMeta'] as Map<String, dynamic>?,
      masterRecord: json['masterRecord'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ApiResponseToJson<T>(
  ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'isDic': instance.isDic,
      'isList': instance.isList,
      'statusCode': instance.statusCode,
      'contentType': instance.contentType,
      'message': instance.message,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'errors': instance.errors,
      'userMeta': instance.userMeta,
      'masterRecord': instance.masterRecord,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
