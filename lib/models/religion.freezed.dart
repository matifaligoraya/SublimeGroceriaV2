// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'religion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Religion _$ReligionFromJson(Map<String, dynamic> json) {
  return _Religion.fromJson(json);
}

/// @nodoc
mixin _$Religion {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Religion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Religion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReligionCopyWith<Religion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReligionCopyWith<$Res> {
  factory $ReligionCopyWith(Religion value, $Res Function(Religion) then) =
      _$ReligionCopyWithImpl<$Res, Religion>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ReligionCopyWithImpl<$Res, $Val extends Religion>
    implements $ReligionCopyWith<$Res> {
  _$ReligionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Religion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReligionImplCopyWith<$Res>
    implements $ReligionCopyWith<$Res> {
  factory _$$ReligionImplCopyWith(
          _$ReligionImpl value, $Res Function(_$ReligionImpl) then) =
      __$$ReligionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ReligionImplCopyWithImpl<$Res>
    extends _$ReligionCopyWithImpl<$Res, _$ReligionImpl>
    implements _$$ReligionImplCopyWith<$Res> {
  __$$ReligionImplCopyWithImpl(
      _$ReligionImpl _value, $Res Function(_$ReligionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Religion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ReligionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReligionImpl implements _Religion {
  const _$ReligionImpl({required this.id, required this.name});

  factory _$ReligionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReligionImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Religion(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReligionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Religion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReligionImplCopyWith<_$ReligionImpl> get copyWith =>
      __$$ReligionImplCopyWithImpl<_$ReligionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReligionImplToJson(
      this,
    );
  }
}

abstract class _Religion implements Religion {
  const factory _Religion({required final int id, required final String name}) =
      _$ReligionImpl;

  factory _Religion.fromJson(Map<String, dynamic> json) =
      _$ReligionImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Religion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReligionImplCopyWith<_$ReligionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
