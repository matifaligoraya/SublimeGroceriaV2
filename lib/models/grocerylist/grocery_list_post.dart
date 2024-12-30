class GroceryListPost {
  final String listName;
  final String mobileID;
  final String userId;

  GroceryListPost(
      {required this.listName, required this.mobileID, required this.userId});

  factory GroceryListPost.fromJson(Map<String, dynamic> json) {
    return GroceryListPost(
      listName: json['listName'],
      mobileID: json['mobileID'],
      userId: json['userId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'listName': listName,
      'mobileID': mobileID,
      'userId': userId,
    };
  }
}
