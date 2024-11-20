// ignore: unused_import
import 'package:flutter/material.dart';

class ShoppingListItem {
  final String title;
  final String tag;
  final int purchasedItems; // Number of purchased items
  final int totalItems; // Total number of items
  final int pendingItems; // Number of pending items
  final int sharedWith; // Number of people shared with

  ShoppingListItem({
    required this.title,
    required this.tag,
    required this.purchasedItems,
    required this.totalItems,
    required this.pendingItems,
    required this.sharedWith,
  });
}
