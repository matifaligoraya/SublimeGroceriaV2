// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Recipes _$RecipesFromJson(Map<String, dynamic> json) {
  return _Recipes.fromJson(json);
}

/// @nodoc
mixin _$Recipes {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get directions => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  List<Ingredient> get ingredientList => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;
  String get dataFiles => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get serving => throw _privateConstructorUsedError;

  /// Serializes this Recipes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Recipes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipesCopyWith<Recipes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesCopyWith<$Res> {
  factory $RecipesCopyWith(Recipes value, $Res Function(Recipes) then) =
      _$RecipesCopyWithImpl<$Res, Recipes>;
  @useResult
  $Res call(
      {int id,
      String title,
      String directions,
      String imgUrl,
      int categoryId,
      String categoryName,
      List<Ingredient> ingredientList,
      String fileName,
      String fileType,
      String dataFiles,
      String tags,
      String time,
      String description,
      int serving});
}

/// @nodoc
class _$RecipesCopyWithImpl<$Res, $Val extends Recipes>
    implements $RecipesCopyWith<$Res> {
  _$RecipesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recipes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? directions = null,
    Object? imgUrl = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? ingredientList = null,
    Object? fileName = null,
    Object? fileType = null,
    Object? dataFiles = null,
    Object? tags = null,
    Object? time = null,
    Object? description = null,
    Object? serving = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientList: null == ingredientList
          ? _value.ingredientList
          : ingredientList // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      dataFiles: null == dataFiles
          ? _value.dataFiles
          : dataFiles // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipesImplCopyWith<$Res> implements $RecipesCopyWith<$Res> {
  factory _$$RecipesImplCopyWith(
          _$RecipesImpl value, $Res Function(_$RecipesImpl) then) =
      __$$RecipesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String directions,
      String imgUrl,
      int categoryId,
      String categoryName,
      List<Ingredient> ingredientList,
      String fileName,
      String fileType,
      String dataFiles,
      String tags,
      String time,
      String description,
      int serving});
}

/// @nodoc
class __$$RecipesImplCopyWithImpl<$Res>
    extends _$RecipesCopyWithImpl<$Res, _$RecipesImpl>
    implements _$$RecipesImplCopyWith<$Res> {
  __$$RecipesImplCopyWithImpl(
      _$RecipesImpl _value, $Res Function(_$RecipesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recipes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? directions = null,
    Object? imgUrl = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? ingredientList = null,
    Object? fileName = null,
    Object? fileType = null,
    Object? dataFiles = null,
    Object? tags = null,
    Object? time = null,
    Object? description = null,
    Object? serving = null,
  }) {
    return _then(_$RecipesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientList: null == ingredientList
          ? _value._ingredientList
          : ingredientList // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      dataFiles: null == dataFiles
          ? _value.dataFiles
          : dataFiles // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipesImpl implements _Recipes {
  const _$RecipesImpl(
      {required this.id,
      required this.title,
      required this.directions,
      required this.imgUrl,
      required this.categoryId,
      required this.categoryName,
      required final List<Ingredient> ingredientList,
      required this.fileName,
      required this.fileType,
      required this.dataFiles,
      required this.tags,
      required this.time,
      required this.description,
      required this.serving})
      : _ingredientList = ingredientList;

  factory _$RecipesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipesImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String directions;
  @override
  final String imgUrl;
  @override
  final int categoryId;
  @override
  final String categoryName;
  final List<Ingredient> _ingredientList;
  @override
  List<Ingredient> get ingredientList {
    if (_ingredientList is EqualUnmodifiableListView) return _ingredientList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientList);
  }

  @override
  final String fileName;
  @override
  final String fileType;
  @override
  final String dataFiles;
  @override
  final String tags;
  @override
  final String time;
  @override
  final String description;
  @override
  final int serving;

  @override
  String toString() {
    return 'Recipes(id: $id, title: $title, directions: $directions, imgUrl: $imgUrl, categoryId: $categoryId, categoryName: $categoryName, ingredientList: $ingredientList, fileName: $fileName, fileType: $fileType, dataFiles: $dataFiles, tags: $tags, time: $time, description: $description, serving: $serving)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.directions, directions) ||
                other.directions == directions) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality()
                .equals(other._ingredientList, _ingredientList) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.dataFiles, dataFiles) ||
                other.dataFiles == dataFiles) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.serving, serving) || other.serving == serving));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      directions,
      imgUrl,
      categoryId,
      categoryName,
      const DeepCollectionEquality().hash(_ingredientList),
      fileName,
      fileType,
      dataFiles,
      tags,
      time,
      description,
      serving);

  /// Create a copy of Recipes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesImplCopyWith<_$RecipesImpl> get copyWith =>
      __$$RecipesImplCopyWithImpl<_$RecipesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipesImplToJson(
      this,
    );
  }
}

abstract class _Recipes implements Recipes {
  const factory _Recipes(
      {required final int id,
      required final String title,
      required final String directions,
      required final String imgUrl,
      required final int categoryId,
      required final String categoryName,
      required final List<Ingredient> ingredientList,
      required final String fileName,
      required final String fileType,
      required final String dataFiles,
      required final String tags,
      required final String time,
      required final String description,
      required final int serving}) = _$RecipesImpl;

  factory _Recipes.fromJson(Map<String, dynamic> json) = _$RecipesImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get directions;
  @override
  String get imgUrl;
  @override
  int get categoryId;
  @override
  String get categoryName;
  @override
  List<Ingredient> get ingredientList;
  @override
  String get fileName;
  @override
  String get fileType;
  @override
  String get dataFiles;
  @override
  String get tags;
  @override
  String get time;
  @override
  String get description;
  @override
  int get serving;

  /// Create a copy of Recipes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipesImplCopyWith<_$RecipesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  int get id => throw _privateConstructorUsedError;
  String get qty => throw _privateConstructorUsedError;
  String get actQty => throw _privateConstructorUsedError;
  int get itemid => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;
  String get dataFiles => throw _privateConstructorUsedError;
  int get quantityTypeId => throw _privateConstructorUsedError;
  String get quantityType => throw _privateConstructorUsedError;
  String get abrivation => throw _privateConstructorUsedError;
  bool get couldBeDouble => throw _privateConstructorUsedError;
  int get categoryid => throw _privateConstructorUsedError;
  String get itemCategory => throw _privateConstructorUsedError;
  int get moq => throw _privateConstructorUsedError;
  String get comments => throw _privateConstructorUsedError;
  String get quantityGuaid => throw _privateConstructorUsedError;
  bool get isServingEffected => throw _privateConstructorUsedError;

  /// Serializes this Ingredient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res, Ingredient>;
  @useResult
  $Res call(
      {int id,
      String qty,
      String actQty,
      int itemid,
      String itemName,
      String fileName,
      String fileType,
      String dataFiles,
      int quantityTypeId,
      String quantityType,
      String abrivation,
      bool couldBeDouble,
      int categoryid,
      String itemCategory,
      int moq,
      String comments,
      String quantityGuaid,
      bool isServingEffected});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res, $Val extends Ingredient>
    implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? qty = null,
    Object? actQty = null,
    Object? itemid = null,
    Object? itemName = null,
    Object? fileName = null,
    Object? fileType = null,
    Object? dataFiles = null,
    Object? quantityTypeId = null,
    Object? quantityType = null,
    Object? abrivation = null,
    Object? couldBeDouble = null,
    Object? categoryid = null,
    Object? itemCategory = null,
    Object? moq = null,
    Object? comments = null,
    Object? quantityGuaid = null,
    Object? isServingEffected = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String,
      actQty: null == actQty
          ? _value.actQty
          : actQty // ignore: cast_nullable_to_non_nullable
              as String,
      itemid: null == itemid
          ? _value.itemid
          : itemid // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      dataFiles: null == dataFiles
          ? _value.dataFiles
          : dataFiles // ignore: cast_nullable_to_non_nullable
              as String,
      quantityTypeId: null == quantityTypeId
          ? _value.quantityTypeId
          : quantityTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      quantityType: null == quantityType
          ? _value.quantityType
          : quantityType // ignore: cast_nullable_to_non_nullable
              as String,
      abrivation: null == abrivation
          ? _value.abrivation
          : abrivation // ignore: cast_nullable_to_non_nullable
              as String,
      couldBeDouble: null == couldBeDouble
          ? _value.couldBeDouble
          : couldBeDouble // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryid: null == categoryid
          ? _value.categoryid
          : categoryid // ignore: cast_nullable_to_non_nullable
              as int,
      itemCategory: null == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String,
      moq: null == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      quantityGuaid: null == quantityGuaid
          ? _value.quantityGuaid
          : quantityGuaid // ignore: cast_nullable_to_non_nullable
              as String,
      isServingEffected: null == isServingEffected
          ? _value.isServingEffected
          : isServingEffected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientImplCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$$IngredientImplCopyWith(
          _$IngredientImpl value, $Res Function(_$IngredientImpl) then) =
      __$$IngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String qty,
      String actQty,
      int itemid,
      String itemName,
      String fileName,
      String fileType,
      String dataFiles,
      int quantityTypeId,
      String quantityType,
      String abrivation,
      bool couldBeDouble,
      int categoryid,
      String itemCategory,
      int moq,
      String comments,
      String quantityGuaid,
      bool isServingEffected});
}

/// @nodoc
class __$$IngredientImplCopyWithImpl<$Res>
    extends _$IngredientCopyWithImpl<$Res, _$IngredientImpl>
    implements _$$IngredientImplCopyWith<$Res> {
  __$$IngredientImplCopyWithImpl(
      _$IngredientImpl _value, $Res Function(_$IngredientImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? qty = null,
    Object? actQty = null,
    Object? itemid = null,
    Object? itemName = null,
    Object? fileName = null,
    Object? fileType = null,
    Object? dataFiles = null,
    Object? quantityTypeId = null,
    Object? quantityType = null,
    Object? abrivation = null,
    Object? couldBeDouble = null,
    Object? categoryid = null,
    Object? itemCategory = null,
    Object? moq = null,
    Object? comments = null,
    Object? quantityGuaid = null,
    Object? isServingEffected = null,
  }) {
    return _then(_$IngredientImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String,
      actQty: null == actQty
          ? _value.actQty
          : actQty // ignore: cast_nullable_to_non_nullable
              as String,
      itemid: null == itemid
          ? _value.itemid
          : itemid // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      dataFiles: null == dataFiles
          ? _value.dataFiles
          : dataFiles // ignore: cast_nullable_to_non_nullable
              as String,
      quantityTypeId: null == quantityTypeId
          ? _value.quantityTypeId
          : quantityTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      quantityType: null == quantityType
          ? _value.quantityType
          : quantityType // ignore: cast_nullable_to_non_nullable
              as String,
      abrivation: null == abrivation
          ? _value.abrivation
          : abrivation // ignore: cast_nullable_to_non_nullable
              as String,
      couldBeDouble: null == couldBeDouble
          ? _value.couldBeDouble
          : couldBeDouble // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryid: null == categoryid
          ? _value.categoryid
          : categoryid // ignore: cast_nullable_to_non_nullable
              as int,
      itemCategory: null == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String,
      moq: null == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      quantityGuaid: null == quantityGuaid
          ? _value.quantityGuaid
          : quantityGuaid // ignore: cast_nullable_to_non_nullable
              as String,
      isServingEffected: null == isServingEffected
          ? _value.isServingEffected
          : isServingEffected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientImpl implements _Ingredient {
  const _$IngredientImpl(
      {required this.id,
      required this.qty,
      required this.actQty,
      required this.itemid,
      required this.itemName,
      required this.fileName,
      required this.fileType,
      required this.dataFiles,
      required this.quantityTypeId,
      required this.quantityType,
      required this.abrivation,
      required this.couldBeDouble,
      required this.categoryid,
      required this.itemCategory,
      required this.moq,
      required this.comments,
      required this.quantityGuaid,
      required this.isServingEffected});

  factory _$IngredientImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientImplFromJson(json);

  @override
  final int id;
  @override
  final String qty;
  @override
  final String actQty;
  @override
  final int itemid;
  @override
  final String itemName;
  @override
  final String fileName;
  @override
  final String fileType;
  @override
  final String dataFiles;
  @override
  final int quantityTypeId;
  @override
  final String quantityType;
  @override
  final String abrivation;
  @override
  final bool couldBeDouble;
  @override
  final int categoryid;
  @override
  final String itemCategory;
  @override
  final int moq;
  @override
  final String comments;
  @override
  final String quantityGuaid;
  @override
  final bool isServingEffected;

  @override
  String toString() {
    return 'Ingredient(id: $id, qty: $qty, actQty: $actQty, itemid: $itemid, itemName: $itemName, fileName: $fileName, fileType: $fileType, dataFiles: $dataFiles, quantityTypeId: $quantityTypeId, quantityType: $quantityType, abrivation: $abrivation, couldBeDouble: $couldBeDouble, categoryid: $categoryid, itemCategory: $itemCategory, moq: $moq, comments: $comments, quantityGuaid: $quantityGuaid, isServingEffected: $isServingEffected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.actQty, actQty) || other.actQty == actQty) &&
            (identical(other.itemid, itemid) || other.itemid == itemid) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.dataFiles, dataFiles) ||
                other.dataFiles == dataFiles) &&
            (identical(other.quantityTypeId, quantityTypeId) ||
                other.quantityTypeId == quantityTypeId) &&
            (identical(other.quantityType, quantityType) ||
                other.quantityType == quantityType) &&
            (identical(other.abrivation, abrivation) ||
                other.abrivation == abrivation) &&
            (identical(other.couldBeDouble, couldBeDouble) ||
                other.couldBeDouble == couldBeDouble) &&
            (identical(other.categoryid, categoryid) ||
                other.categoryid == categoryid) &&
            (identical(other.itemCategory, itemCategory) ||
                other.itemCategory == itemCategory) &&
            (identical(other.moq, moq) || other.moq == moq) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.quantityGuaid, quantityGuaid) ||
                other.quantityGuaid == quantityGuaid) &&
            (identical(other.isServingEffected, isServingEffected) ||
                other.isServingEffected == isServingEffected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      qty,
      actQty,
      itemid,
      itemName,
      fileName,
      fileType,
      dataFiles,
      quantityTypeId,
      quantityType,
      abrivation,
      couldBeDouble,
      categoryid,
      itemCategory,
      moq,
      comments,
      quantityGuaid,
      isServingEffected);

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientImplCopyWith<_$IngredientImpl> get copyWith =>
      __$$IngredientImplCopyWithImpl<_$IngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientImplToJson(
      this,
    );
  }
}

abstract class _Ingredient implements Ingredient {
  const factory _Ingredient(
      {required final int id,
      required final String qty,
      required final String actQty,
      required final int itemid,
      required final String itemName,
      required final String fileName,
      required final String fileType,
      required final String dataFiles,
      required final int quantityTypeId,
      required final String quantityType,
      required final String abrivation,
      required final bool couldBeDouble,
      required final int categoryid,
      required final String itemCategory,
      required final int moq,
      required final String comments,
      required final String quantityGuaid,
      required final bool isServingEffected}) = _$IngredientImpl;

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$IngredientImpl.fromJson;

  @override
  int get id;
  @override
  String get qty;
  @override
  String get actQty;
  @override
  int get itemid;
  @override
  String get itemName;
  @override
  String get fileName;
  @override
  String get fileType;
  @override
  String get dataFiles;
  @override
  int get quantityTypeId;
  @override
  String get quantityType;
  @override
  String get abrivation;
  @override
  bool get couldBeDouble;
  @override
  int get categoryid;
  @override
  String get itemCategory;
  @override
  int get moq;
  @override
  String get comments;
  @override
  String get quantityGuaid;
  @override
  bool get isServingEffected;

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IngredientImplCopyWith<_$IngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
