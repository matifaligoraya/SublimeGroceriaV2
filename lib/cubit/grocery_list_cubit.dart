import 'package:dio/dio.dart';
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
      final String url = '${ApiConfig.GLIST}'; // Add the id to the URL

      // Query parameter passed as mobileid
      final Map<String, dynamic> queryParams = {'userid': id};

      // Fetch the data from the repository
      final rawData = await repository.get(
        url: url, // Use the updated URL with id
        queryParams: queryParams, // Pass the mobileid as query param
      );

      print('Raw API Response: $rawData');

      // Handle wrapped object with "data" key
      if (rawData is Map<String, dynamic> && rawData['data'] is List) {
        _allLists = (rawData['data'] as List).map((item) {
          if (item is Map<String, dynamic>) {
            return GroceryList.fromJson(item);
          } else {
            throw Exception('Invalid data format: $item');
          }
        }).toList();
      } else if (rawData is List) {
        // Handle direct list response
        _allLists = rawData.map((item) {
          if (item is Map<String, dynamic>) {
            return GroceryList.fromJson(item);
          } else {
            throw Exception('Invalid data format: $item');
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

      // Emit initial loaded state
      emit(SublimeLoaded<List<GroceryList>>(_allLists));
    } catch (e) {
      // Debugging: Log the exception details
      print('Error occurred during API call: $e');
      if (e is DioException) {
        // Provide more details on DioError
        print('DioError: ${e.message}');
        if (e.response != null) {
          print('Response data: ${e.response?.data}');
        }
      }
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
