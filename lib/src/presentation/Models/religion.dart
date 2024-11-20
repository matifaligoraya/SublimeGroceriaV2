// ignore: unused_import
import 'package:flutter/material.dart';

class Religion {
  final int id;
  final String name; // Number of people shared with

  Religion({
    required this.id,
    required this.name,
  });
  // Factory constructor to create an instance from JSON
  factory Religion.fromJson(Map<String, dynamic> json) {
    return Religion(
      id: json['id'] as int,
      name: json['name'] as String,
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
