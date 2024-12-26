import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/cubit/basecubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list.dart';
import 'package:sublime_groceria/repositories/religionrepository/grocery_list_repository.dart';

class GroroceryListCubit extends BaseCubit<GroceryList> {
  final GroceryListRepository repository;

  List<GroceryList> _allLists = []; // Stores the complete list of items
  List<GroceryList> _myLists = []; // My Lists (isSharedList == false)
  List<GroceryList> _sharedLists = []; // Shared Lists (isSharedList == true)
  List<GroceryList> _filteredMyLists = []; // Filtered My Lists
  List<GroceryList> _filteredSharedLists = []; // Filtered Shared Lists

  GroroceryListCubit(this.repository) : super(SublimeInitial());

  void fetchItems() async {
    emit(SublimeLoading());
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? userid = prefs.getString('userId');

      if (userid == null) {
        emit(SublimeError("User id is null or empty"));
        return;
      }

      String url = '${Uri.parse(ApiConfig.GLIST)}/$userid';
      print("URL: $url"); // Log the constructed URL

      final Map<String, dynamic> queryParams = {'userId': userid};

      // Log the query parameters
      print("Query Params: $queryParams");

      // Make the GET request using the repository's method
      final rawData = await repository.get(url: url);

      // Log the raw data returned from API
      print("Raw API Data: $rawData");

      // Check if rawData is null or empty
      if (rawData == null) {
        throw Exception("API returned null or empty data.");
      }

      // Handle the response data based on its type
      if (rawData is Map<String, dynamic> && rawData['data'] is List) {
        _allLists = (rawData['data'] as List).map((item) {
          if (item is Map<String, dynamic>) {
            return GroceryList.fromJson(item);
          } else {
            throw Exception('Invalid data format in list item: $item');
          }
        }).toList();
      } else if (rawData is List) {
        _allLists = rawData.map((item) {
          if (item is Map<String, dynamic>) {
            return GroceryList.fromJson(item);
          } else {
            throw Exception('Invalid data format in list item: $item');
          }
        }).toList();
      } else {
        throw Exception('Expected a list but got ${rawData.runtimeType}');
      }

      // Separate into My Lists and Shared Lists
      _myLists = _allLists.where((item) => item.isSharedList == false).toList();
      _sharedLists =
          _allLists.where((item) => item.isSharedList == true).toList();

      // Initialize filtered lists
      _filteredMyLists = List.from(_myLists);
      _filteredSharedLists = List.from(_sharedLists);

      emit(SublimeLoaded<List<GroceryList>>(_allLists));
    } catch (e) {
      // Log the detailed error
      print('Error occurred during API call: $e');

      if (e is DioException) {
        // Log details of DioException
        print('DioError: ${e.message}');
        if (e.response != null) {
          print('Response data: ${e.response?.data}');
          print('Response status code: ${e.response?.statusCode}');
        } else {
          print('No response data available.');
        }
      } else {
        // For other exceptions (non-Dio)
        print('Non-Dio Exception: ${e.toString()}');
      }

      // Emit error state with detailed error message
      emit(SublimeError('Failed to parse API response: ${e.toString()}'));
    }
  }

  /// Filters the lists based on the query
  void filterLists(String query) {
    if (query.isEmpty) {
      // Reset to all items if the query is empty
      _filteredMyLists = List.from(_myLists);
      _filteredSharedLists = List.from(_sharedLists);
    } else {
      // Filter My Lists
      _filteredMyLists = _myLists
          .where((item) =>
              item.listName != null &&
              item.listName!.toLowerCase().contains(query.toLowerCase()))
          .toList();

      // Filter Shared Lists
      _filteredSharedLists = _sharedLists
          .where((item) =>
              item.listName != null &&
              item.listName!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    // Emit the filtered state
    emit(SublimeLoaded<List<GroceryList>>(
        _filteredMyLists + _filteredSharedLists));
  }

  // Getters for filtered lists and counts
  List<GroceryList> get filteredMyLists => _filteredMyLists;
  List<GroceryList> get filteredSharedLists => _filteredSharedLists;
  int get myListCount => _filteredMyLists.length;
  int get sharedListCount => _filteredSharedLists.length;
}
