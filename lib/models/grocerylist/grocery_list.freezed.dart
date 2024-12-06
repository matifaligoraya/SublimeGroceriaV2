// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroceryList _$GlistFromJson(Map<String, dynamic> json) {
  return _Glist.fromJson(json);
}

/// @nodoc
mixin _$Glist {
  int? get listId => throw _privateConstructorUsedError;
  String? get listName => throw _privateConstructorUsedError;
  String? get mobileID => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get ownerEmail => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  DateTime? get updatedDate => throw _privateConstructorUsedError;
  int? get totalItems => throw _privateConstructorUsedError;
  int? get pendingItemsCount => throw _privateConstructorUsedError;
  int? get sharedUserCount => throw _privateConstructorUsedError;
  bool? get isSharedList => throw _privateConstructorUsedError;
  List<GRecipe>? get gRecipe => throw _privateConstructorUsedError;

  /// Serializes this Glist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Glist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GlistCopyWith<GroceryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlistCopyWith<$Res> {
  factory $GlistCopyWith(GroceryList value, $Res Function(GroceryList) then) =
      _$GlistCopyWithImpl<$Res, GroceryList>;
  @useResult
  $Res call(
      {int? listId,
      String? listName,
      String? mobileID,
      int? userId,
      String? userName,
      String? ownerEmail,
      DateTime? createdDate,
      DateTime? updatedDate,
      int? totalItems,
      int? pendingItemsCount,
      int? sharedUserCount,
      bool? isSharedList,
      List<GRecipe>? gRecipe});
}

/// @nodoc
class _$GlistCopyWithImpl<$Res, $Val extends GroceryList>
    implements $GlistCopyWith<$Res> {
  _$GlistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Glist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = freezed,
    Object? listName = freezed,
    Object? mobileID = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? ownerEmail = freezed,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
    Object? totalItems = freezed,
    Object? pendingItemsCount = freezed,
    Object? sharedUserCount = freezed,
    Object? isSharedList = freezed,
    Object? gRecipe = freezed,
  }) {
    return _then(_value.copyWith(
      listId: freezed == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as int?,
      listName: freezed == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileID: freezed == mobileID
          ? _value.mobileID
          : mobileID // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerEmail: freezed == ownerEmail
          ? _value.ownerEmail
          : ownerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingItemsCount: freezed == pendingItemsCount
          ? _value.pendingItemsCount
          : pendingItemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedUserCount: freezed == sharedUserCount
          ? _value.sharedUserCount
          : sharedUserCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isSharedList: freezed == isSharedList
          ? _value.isSharedList
          : isSharedList // ignore: cast_nullable_to_non_nullable
              as bool?,
      gRecipe: freezed == gRecipe
          ? _value.gRecipe
          : gRecipe // ignore: cast_nullable_to_non_nullable
              as List<GRecipe>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlistImplCopyWith<$Res> implements $GlistCopyWith<$Res> {
  factory _$$GlistImplCopyWith(
          _$GlistImpl value, $Res Function(_$GlistImpl) then) =
      __$$GlistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? listId,
      String? listName,
      String? mobileID,
      int? userId,
      String? userName,
      String? ownerEmail,
      DateTime? createdDate,
      DateTime? updatedDate,
      int? totalItems,
      int? pendingItemsCount,
      int? sharedUserCount,
      bool? isSharedList,
      List<GRecipe>? gRecipe});
}

/// @nodoc
class __$$GlistImplCopyWithImpl<$Res>
    extends _$GlistCopyWithImpl<$Res, _$GlistImpl>
    implements _$$GlistImplCopyWith<$Res> {
  __$$GlistImplCopyWithImpl(
      _$GlistImpl _value, $Res Function(_$GlistImpl) _then)
      : super(_value, _then);

  /// Create a copy of Glist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = freezed,
    Object? listName = freezed,
    Object? mobileID = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? ownerEmail = freezed,
    Object? createdDate = freezed,
    Object? updatedDate = freezed,
    Object? totalItems = freezed,
    Object? pendingItemsCount = freezed,
    Object? sharedUserCount = freezed,
    Object? isSharedList = freezed,
    Object? gRecipe = freezed,
  }) {
    return _then(_$GlistImpl(
      listId: freezed == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as int?,
      listName: freezed == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileID: freezed == mobileID
          ? _value.mobileID
          : mobileID // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerEmail: freezed == ownerEmail
          ? _value.ownerEmail
          : ownerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedDate: freezed == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingItemsCount: freezed == pendingItemsCount
          ? _value.pendingItemsCount
          : pendingItemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sharedUserCount: freezed == sharedUserCount
          ? _value.sharedUserCount
          : sharedUserCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isSharedList: freezed == isSharedList
          ? _value.isSharedList
          : isSharedList // ignore: cast_nullable_to_non_nullable
              as bool?,
      gRecipe: freezed == gRecipe
          ? _value._gRecipe
          : gRecipe // ignore: cast_nullable_to_non_nullable
              as List<GRecipe>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GlistImpl implements _Glist {
  _$GlistImpl(
      {this.listId,
      this.listName,
      this.mobileID,
      this.userId,
      this.userName,
      this.ownerEmail,
      this.createdDate,
      this.updatedDate,
      this.totalItems,
      this.pendingItemsCount,
      this.sharedUserCount,
      this.isSharedList,
      final List<GRecipe>? gRecipe})
      : _gRecipe = gRecipe;

  factory _$GlistImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlistImplFromJson(json);

  @override
  final int? listId;
  @override
  final String? listName;
  @override
  final String? mobileID;
  @override
  final int? userId;
  @override
  final String? userName;
  @override
  final String? ownerEmail;
  @override
  final DateTime? createdDate;
  @override
  final DateTime? updatedDate;
  @override
  final int? totalItems;
  @override
  final int? pendingItemsCount;
  @override
  final int? sharedUserCount;
  @override
  final bool? isSharedList;
  final List<GRecipe>? _gRecipe;
  @override
  List<GRecipe>? get gRecipe {
    final value = _gRecipe;
    if (value == null) return null;
    if (_gRecipe is EqualUnmodifiableListView) return _gRecipe;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Glist(listId: $listId, listName: $listName, mobileID: $mobileID, userId: $userId, userName: $userName, ownerEmail: $ownerEmail, createdDate: $createdDate, updatedDate: $updatedDate, totalItems: $totalItems, pendingItemsCount: $pendingItemsCount, sharedUserCount: $sharedUserCount, isSharedList: $isSharedList, gRecipe: $gRecipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlistImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.listName, listName) ||
                other.listName == listName) &&
            (identical(other.mobileID, mobileID) ||
                other.mobileID == mobileID) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.ownerEmail, ownerEmail) ||
                other.ownerEmail == ownerEmail) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.pendingItemsCount, pendingItemsCount) ||
                other.pendingItemsCount == pendingItemsCount) &&
            (identical(other.sharedUserCount, sharedUserCount) ||
                other.sharedUserCount == sharedUserCount) &&
            (identical(other.isSharedList, isSharedList) ||
                other.isSharedList == isSharedList) &&
            const DeepCollectionEquality().equals(other._gRecipe, _gRecipe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      listId,
      listName,
      mobileID,
      userId,
      userName,
      ownerEmail,
      createdDate,
      updatedDate,
      totalItems,
      pendingItemsCount,
      sharedUserCount,
      isSharedList,
      const DeepCollectionEquality().hash(_gRecipe));

  /// Create a copy of Glist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlistImplCopyWith<_$GlistImpl> get copyWith =>
      __$$GlistImplCopyWithImpl<_$GlistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlistImplToJson(
      this,
    );
  }
}

abstract class _Glist implements GroceryList {
  factory _Glist(
      {final int? listId,
      final String? listName,
      final String? mobileID,
      final int? userId,
      final String? userName,
      final String? ownerEmail,
      final DateTime? createdDate,
      final DateTime? updatedDate,
      final int? totalItems,
      final int? pendingItemsCount,
      final int? sharedUserCount,
      final bool? isSharedList,
      final List<GRecipe>? gRecipe}) = _$GlistImpl;

  factory _Glist.fromJson(Map<String, dynamic> json) = _$GlistImpl.fromJson;

  @override
  int? get listId;
  @override
  String? get listName;
  @override
  String? get mobileID;
  @override
  int? get userId;
  @override
  String? get userName;
  @override
  String? get ownerEmail;
  @override
  DateTime? get createdDate;
  @override
  DateTime? get updatedDate;
  @override
  int? get totalItems;
  @override
  int? get pendingItemsCount;
  @override
  int? get sharedUserCount;
  @override
  bool? get isSharedList;
  @override
  List<GRecipe>? get gRecipe;

  /// Create a copy of Glist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlistImplCopyWith<_$GlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
