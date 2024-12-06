// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GRecipe _$GRecipeFromJson(Map<String, dynamic> json) {
  return _GRecipe.fromJson(json);
}

/// @nodoc
mixin _$GRecipe {
  int? get id => throw _privateConstructorUsedError;
  int? get recipeId => throw _privateConstructorUsedError;
  String? get recipe => throw _privateConstructorUsedError;
  int? get groceryListId => throw _privateConstructorUsedError;
  String? get excludedItem => throw _privateConstructorUsedError;
  int? get serving => throw _privateConstructorUsedError;

  /// Serializes this GRecipe to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GRecipe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GRecipeCopyWith<GRecipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GRecipeCopyWith<$Res> {
  factory $GRecipeCopyWith(GRecipe value, $Res Function(GRecipe) then) =
      _$GRecipeCopyWithImpl<$Res, GRecipe>;
  @useResult
  $Res call(
      {int? id,
      int? recipeId,
      String? recipe,
      int? groceryListId,
      String? excludedItem,
      int? serving});
}

/// @nodoc
class _$GRecipeCopyWithImpl<$Res, $Val extends GRecipe>
    implements $GRecipeCopyWith<$Res> {
  _$GRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GRecipe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recipeId = freezed,
    Object? recipe = freezed,
    Object? groceryListId = freezed,
    Object? excludedItem = freezed,
    Object? serving = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as String?,
      groceryListId: freezed == groceryListId
          ? _value.groceryListId
          : groceryListId // ignore: cast_nullable_to_non_nullable
              as int?,
      excludedItem: freezed == excludedItem
          ? _value.excludedItem
          : excludedItem // ignore: cast_nullable_to_non_nullable
              as String?,
      serving: freezed == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GRecipeImplCopyWith<$Res> implements $GRecipeCopyWith<$Res> {
  factory _$$GRecipeImplCopyWith(
          _$GRecipeImpl value, $Res Function(_$GRecipeImpl) then) =
      __$$GRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? recipeId,
      String? recipe,
      int? groceryListId,
      String? excludedItem,
      int? serving});
}

/// @nodoc
class __$$GRecipeImplCopyWithImpl<$Res>
    extends _$GRecipeCopyWithImpl<$Res, _$GRecipeImpl>
    implements _$$GRecipeImplCopyWith<$Res> {
  __$$GRecipeImplCopyWithImpl(
      _$GRecipeImpl _value, $Res Function(_$GRecipeImpl) _then)
      : super(_value, _then);

  /// Create a copy of GRecipe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recipeId = freezed,
    Object? recipe = freezed,
    Object? groceryListId = freezed,
    Object? excludedItem = freezed,
    Object? serving = freezed,
  }) {
    return _then(_$GRecipeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      recipeId: freezed == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int?,
      recipe: freezed == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as String?,
      groceryListId: freezed == groceryListId
          ? _value.groceryListId
          : groceryListId // ignore: cast_nullable_to_non_nullable
              as int?,
      excludedItem: freezed == excludedItem
          ? _value.excludedItem
          : excludedItem // ignore: cast_nullable_to_non_nullable
              as String?,
      serving: freezed == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GRecipeImpl implements _GRecipe {
  _$GRecipeImpl(
      {this.id,
      this.recipeId,
      this.recipe,
      this.groceryListId,
      this.excludedItem,
      this.serving});

  factory _$GRecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$GRecipeImplFromJson(json);

  @override
  final int? id;
  @override
  final int? recipeId;
  @override
  final String? recipe;
  @override
  final int? groceryListId;
  @override
  final String? excludedItem;
  @override
  final int? serving;

  @override
  String toString() {
    return 'GRecipe(id: $id, recipeId: $recipeId, recipe: $recipe, groceryListId: $groceryListId, excludedItem: $excludedItem, serving: $serving)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GRecipeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.groceryListId, groceryListId) ||
                other.groceryListId == groceryListId) &&
            (identical(other.excludedItem, excludedItem) ||
                other.excludedItem == excludedItem) &&
            (identical(other.serving, serving) || other.serving == serving));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, recipeId, recipe, groceryListId, excludedItem, serving);

  /// Create a copy of GRecipe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GRecipeImplCopyWith<_$GRecipeImpl> get copyWith =>
      __$$GRecipeImplCopyWithImpl<_$GRecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GRecipeImplToJson(
      this,
    );
  }
}

abstract class _GRecipe implements GRecipe {
  factory _GRecipe(
      {final int? id,
      final int? recipeId,
      final String? recipe,
      final int? groceryListId,
      final String? excludedItem,
      final int? serving}) = _$GRecipeImpl;

  factory _GRecipe.fromJson(Map<String, dynamic> json) = _$GRecipeImpl.fromJson;

  @override
  int? get id;
  @override
  int? get recipeId;
  @override
  String? get recipe;
  @override
  int? get groceryListId;
  @override
  String? get excludedItem;
  @override
  int? get serving;

  /// Create a copy of GRecipe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GRecipeImplCopyWith<_$GRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
