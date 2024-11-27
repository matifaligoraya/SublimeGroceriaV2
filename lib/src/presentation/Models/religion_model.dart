class ReligionModel {
  final int id;
  final String name;

  ReligionModel({required this.id, required this.name});

  // Add fromJson method to parse the data
  factory ReligionModel.fromJson(Map<String, dynamic> json) {
    return ReligionModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
