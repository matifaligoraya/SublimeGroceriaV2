import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/common/apiException.dart';
import 'package:sublime_groceria/models/common/response.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list_post.dart';
import 'package:sublime_groceria/repositories/sublimebaserepository.dart';

class GroceryListRepository extends SublimeBaseRepository {
  GroceryListRepository() : super() {}

  /// Fetch grocery lists from the API
  Future<List<GroceryList>> fetchGroceryLists() async {
    userId = await fetchUserId();
    String url = '${Uri.parse(ApiConfig.GLIST)}/$userId';
    final response = await get(
      url: url,
      queryParams: null,
    );
    // response['data'] = null;
    if (response['isList'] == true && response['data'] != null) {
      final List<dynamic> rawData = response['data'];
      var responsedata = rawData
          .map((item) => GroceryList.fromJson(item as Map<String, dynamic>))
          .toList();
      return responsedata;
    } else {
      final String errorMessage =
          response['message'] ?? 'No list is created yet.';
      throw Exception(errorMessage);
    }
  }

  Future<ApiResponse<List<GroceryListPost>>> updateGroceryList(
      String listName) async {
    try {
      String? userId = await fetchUserId();
      String url = '${Uri.parse(ApiConfig.GLISTPOST)}';
      print("Update URL: $url");

      Map<String, dynamic> data = {
        'listName': listName,
        'mobileID': '0',
        'userId': userId,
      };
      print("Payload: $data");

      final response = await post<List<GroceryListPost>>(
        url: url,
        fromJsonT: (json) {
          if (json is List) {
            return json
                .map((item) =>
                    GroceryListPost.fromJson(item as Map<String, dynamic>))
                .toList();
          } else {
            throw Exception('Invalid response format from server.');
          }
        },
        data: data,
      );

      print("Response: ${response.data}");
      return response;
    } on ApiException catch (e) {
      throw e;
    } catch (e) {
      print("Error: $e");
      throw Exception('Error updating grocery list: $e');
    }
  }
}
