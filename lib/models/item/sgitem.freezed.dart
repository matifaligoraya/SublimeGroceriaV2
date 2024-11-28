// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sgitem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SgItem _$SgItemFromJson(Map<String, dynamic> json) {
  return _SgItem.fromJson(json);
}

/// @nodoc
mixin _$SgItem {
  int? get itemId => throw _privateConstructorUsedError;
  String? get itemName => throw _privateConstructorUsedError;
  String? get itemKeyword => throw _privateConstructorUsedError;
  int? get quantityTypeId => throw _privateConstructorUsedError;
  int? get itemCategoryId => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  String? get typeName => throw _privateConstructorUsedError;
  String? get abbrivation => throw _privateConstructorUsedError;
  String? get unitName => throw _privateConstructorUsedError;
  bool? get couldBeDouble => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;
  String? get dataFiles => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get itemNutritionId => throw _privateConstructorUsedError;
  int? get moq => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  List<Nutration> get nutration => throw _privateConstructorUsedError;

  /// Serializes this SgItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SgItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SgItemCopyWith<SgItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SgItemCopyWith<$Res> {
  factory $SgItemCopyWith(SgItem value, $Res Function(SgItem) then) =
      _$SgItemCopyWithImpl<$Res, SgItem>;
  @useResult
  $Res call(
      {int? itemId,
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
      List<Nutration> nutration});
}

/// @nodoc
class _$SgItemCopyWithImpl<$Res, $Val extends SgItem>
    implements $SgItemCopyWith<$Res> {
  _$SgItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SgItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? itemName = freezed,
    Object? itemKeyword = freezed,
    Object? quantityTypeId = freezed,
    Object? itemCategoryId = freezed,
    Object? categoryName = freezed,
    Object? typeName = freezed,
    Object? abbrivation = freezed,
    Object? unitName = freezed,
    Object? couldBeDouble = freezed,
    Object? fileName = freezed,
    Object? fileType = freezed,
    Object? dataFiles = freezed,
    Object? description = freezed,
    Object? itemNutritionId = freezed,
    Object? moq = freezed,
    Object? isActive = freezed,
    Object? nutration = null,
  }) {
    return _then(_value.copyWith(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemKeyword: freezed == itemKeyword
          ? _value.itemKeyword
          : itemKeyword // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityTypeId: freezed == quantityTypeId
          ? _value.quantityTypeId
          : quantityTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      itemCategoryId: freezed == itemCategoryId
          ? _value.itemCategoryId
          : itemCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      abbrivation: freezed == abbrivation
          ? _value.abbrivation
          : abbrivation // ignore: cast_nullable_to_non_nullable
              as String?,
      unitName: freezed == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String?,
      couldBeDouble: freezed == couldBeDouble
          ? _value.couldBeDouble
          : couldBeDouble // ignore: cast_nullable_to_non_nullable
              as bool?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      dataFiles: freezed == dataFiles
          ? _value.dataFiles
          : dataFiles // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      itemNutritionId: freezed == itemNutritionId
          ? _value.itemNutritionId
          : itemNutritionId // ignore: cast_nullable_to_non_nullable
              as int?,
      moq: freezed == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      nutration: null == nutration
          ? _value.nutration
          : nutration // ignore: cast_nullable_to_non_nullable
              as List<Nutration>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SgItemImplCopyWith<$Res> implements $SgItemCopyWith<$Res> {
  factory _$$SgItemImplCopyWith(
          _$SgItemImpl value, $Res Function(_$SgItemImpl) then) =
      __$$SgItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? itemId,
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
      List<Nutration> nutration});
}

/// @nodoc
class __$$SgItemImplCopyWithImpl<$Res>
    extends _$SgItemCopyWithImpl<$Res, _$SgItemImpl>
    implements _$$SgItemImplCopyWith<$Res> {
  __$$SgItemImplCopyWithImpl(
      _$SgItemImpl _value, $Res Function(_$SgItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SgItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? itemName = freezed,
    Object? itemKeyword = freezed,
    Object? quantityTypeId = freezed,
    Object? itemCategoryId = freezed,
    Object? categoryName = freezed,
    Object? typeName = freezed,
    Object? abbrivation = freezed,
    Object? unitName = freezed,
    Object? couldBeDouble = freezed,
    Object? fileName = freezed,
    Object? fileType = freezed,
    Object? dataFiles = freezed,
    Object? description = freezed,
    Object? itemNutritionId = freezed,
    Object? moq = freezed,
    Object? isActive = freezed,
    Object? nutration = null,
  }) {
    return _then(_$SgItemImpl(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemKeyword: freezed == itemKeyword
          ? _value.itemKeyword
          : itemKeyword // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityTypeId: freezed == quantityTypeId
          ? _value.quantityTypeId
          : quantityTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      itemCategoryId: freezed == itemCategoryId
          ? _value.itemCategoryId
          : itemCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      abbrivation: freezed == abbrivation
          ? _value.abbrivation
          : abbrivation // ignore: cast_nullable_to_non_nullable
              as String?,
      unitName: freezed == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String?,
      couldBeDouble: freezed == couldBeDouble
          ? _value.couldBeDouble
          : couldBeDouble // ignore: cast_nullable_to_non_nullable
              as bool?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      dataFiles: freezed == dataFiles
          ? _value.dataFiles
          : dataFiles // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      itemNutritionId: freezed == itemNutritionId
          ? _value.itemNutritionId
          : itemNutritionId // ignore: cast_nullable_to_non_nullable
              as int?,
      moq: freezed == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      nutration: null == nutration
          ? _value._nutration
          : nutration // ignore: cast_nullable_to_non_nullable
              as List<Nutration>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SgItemImpl implements _SgItem {
  _$SgItemImpl(
      {required this.itemId,
      required this.itemName,
      required this.itemKeyword,
      required this.quantityTypeId,
      required this.itemCategoryId,
      required this.categoryName,
      required this.typeName,
      required this.abbrivation,
      required this.unitName,
      required this.couldBeDouble,
      required this.fileName,
      required this.fileType,
      required this.dataFiles,
      required this.description,
      required this.itemNutritionId,
      required this.moq,
      required this.isActive,
      required final List<Nutration> nutration})
      : _nutration = nutration;

  factory _$SgItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SgItemImplFromJson(json);

  @override
  final int? itemId;
  @override
  final String? itemName;
  @override
  final String? itemKeyword;
  @override
  final int? quantityTypeId;
  @override
  final int? itemCategoryId;
  @override
  final String? categoryName;
  @override
  final String? typeName;
  @override
  final String? abbrivation;
  @override
  final String? unitName;
  @override
  final bool? couldBeDouble;
  @override
  final String? fileName;
  @override
  final String? fileType;
  @override
  final String? dataFiles;
  @override
  final String? description;
  @override
  final int? itemNutritionId;
  @override
  final int? moq;
  @override
  final bool? isActive;
  final List<Nutration> _nutration;
  @override
  List<Nutration> get nutration {
    if (_nutration is EqualUnmodifiableListView) return _nutration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nutration);
  }

  @override
  String toString() {
    return 'SgItem(itemId: $itemId, itemName: $itemName, itemKeyword: $itemKeyword, quantityTypeId: $quantityTypeId, itemCategoryId: $itemCategoryId, categoryName: $categoryName, typeName: $typeName, abbrivation: $abbrivation, unitName: $unitName, couldBeDouble: $couldBeDouble, fileName: $fileName, fileType: $fileType, dataFiles: $dataFiles, description: $description, itemNutritionId: $itemNutritionId, moq: $moq, isActive: $isActive, nutration: $nutration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SgItemImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemKeyword, itemKeyword) ||
                other.itemKeyword == itemKeyword) &&
            (identical(other.quantityTypeId, quantityTypeId) ||
                other.quantityTypeId == quantityTypeId) &&
            (identical(other.itemCategoryId, itemCategoryId) ||
                other.itemCategoryId == itemCategoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.abbrivation, abbrivation) ||
                other.abbrivation == abbrivation) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.couldBeDouble, couldBeDouble) ||
                other.couldBeDouble == couldBeDouble) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.dataFiles, dataFiles) ||
                other.dataFiles == dataFiles) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.itemNutritionId, itemNutritionId) ||
                other.itemNutritionId == itemNutritionId) &&
            (identical(other.moq, moq) || other.moq == moq) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._nutration, _nutration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      itemName,
      itemKeyword,
      quantityTypeId,
      itemCategoryId,
      categoryName,
      typeName,
      abbrivation,
      unitName,
      couldBeDouble,
      fileName,
      fileType,
      dataFiles,
      description,
      itemNutritionId,
      moq,
      isActive,
      const DeepCollectionEquality().hash(_nutration));

  /// Create a copy of SgItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SgItemImplCopyWith<_$SgItemImpl> get copyWith =>
      __$$SgItemImplCopyWithImpl<_$SgItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SgItemImplToJson(
      this,
    );
  }
}

abstract class _SgItem implements SgItem {
  factory _SgItem(
      {required final int? itemId,
      required final String? itemName,
      required final String? itemKeyword,
      required final int? quantityTypeId,
      required final int? itemCategoryId,
      required final String? categoryName,
      required final String? typeName,
      required final String? abbrivation,
      required final String? unitName,
      required final bool? couldBeDouble,
      required final String? fileName,
      required final String? fileType,
      required final String? dataFiles,
      required final String? description,
      required final int? itemNutritionId,
      required final int? moq,
      required final bool? isActive,
      required final List<Nutration> nutration}) = _$SgItemImpl;

  factory _SgItem.fromJson(Map<String, dynamic> json) = _$SgItemImpl.fromJson;

  @override
  int? get itemId;
  @override
  String? get itemName;
  @override
  String? get itemKeyword;
  @override
  int? get quantityTypeId;
  @override
  int? get itemCategoryId;
  @override
  String? get categoryName;
  @override
  String? get typeName;
  @override
  String? get abbrivation;
  @override
  String? get unitName;
  @override
  bool? get couldBeDouble;
  @override
  String? get fileName;
  @override
  String? get fileType;
  @override
  String? get dataFiles;
  @override
  String? get description;
  @override
  int? get itemNutritionId;
  @override
  int? get moq;
  @override
  bool? get isActive;
  @override
  List<Nutration> get nutration;

  /// Create a copy of SgItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SgItemImplCopyWith<_$SgItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
