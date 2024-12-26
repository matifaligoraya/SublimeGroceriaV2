// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroceryListImpl _$$GroceryListImplFromJson(Map<String, dynamic> json) =>
    _$GroceryListImpl(
      listId: (json['listId'] as num?)?.toInt(),
      listName: json['listName'] as String?,
      mobileID: json['mobileID'] as String?,
      userId: (json['userId'] as num?)?.toInt(),
      userName: json['userName'] as String?,
      ownerEmail: json['ownerEmail'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
      totalItems: (json['totalItems'] as num?)?.toInt(),
      pendingItemsCount: (json['pendingItemsCount'] as num?)?.toInt(),
      sharedUserCount: (json['sharedUserCount'] as num?)?.toInt(),
      isSharedList: json['isSharedList'] as bool?,
      gRecipe: (json['gRecipe'] as List<dynamic>?)
          ?.map((e) => GRecipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroceryListImplToJson(_$GroceryListImpl instance) =>
    <String, dynamic>{
      'listId': instance.listId,
      'listName': instance.listName,
      'mobileID': instance.mobileID,
      'userId': instance.userId,
      'userName': instance.userName,
      'ownerEmail': instance.ownerEmail,
      'createdDate': instance.createdDate?.toIso8601String(),
      'updatedDate': instance.updatedDate?.toIso8601String(),
      'totalItems': instance.totalItems,
      'pendingItemsCount': instance.pendingItemsCount,
      'sharedUserCount': instance.sharedUserCount,
      'isSharedList': instance.isSharedList,
      'gRecipe': instance.gRecipe,
    };
