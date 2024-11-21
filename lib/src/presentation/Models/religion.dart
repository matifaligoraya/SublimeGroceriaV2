class Religion {
  final int id;
  final String name;

  Religion({required this.id, required this.name});

  // Factory method to create an instance from JSON
  factory Religion.fromJson(Map<String, dynamic> json) {
    return Religion(
      id: json['id'] as int, // Ensure id is of type int
      name: json['name'] as String, // Ensure name is of type String
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
