import 'package:shared_preferences/shared_preferences.dart';
import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/cubit/basecubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list.dart';
import 'package:sublime_groceria/repositories/religionrepository/grocery_list_repository.dart';
import 'package:sublime_groceria/models/common/response.dart';

class GroroceryListCubit extends BaseCubit<GroceryList> {
  final GroceryListRepository repository;

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
      print("URL: $url");
      // Fetch raw data from the repository
      final rawData = await repository.get(
        url: url,
      );

      // Deserialize the API response
      final apiResponse = ApiResponse<List<GroceryList>>.fromJson(
        rawData,
        (json) => (json as List)
            .map((item) => GroceryList.fromJson(item as Map<String, dynamic>))
            .toList(),
      );

      // Handle response status and data
      if (apiResponse.statusCode == 200 && apiResponse.data != null) {
        //  final allLists = (rawData['data'] as List)
        //   .map((item) => GroceryList.fromJson(item))
        //   .toList();

        var _myLists = apiResponse.data!
            .where((item) => item.isSharedList == false)
            .toList();
        var _sharedLists = apiResponse.data!
            .where((item) => item.isSharedList == true)
            .toList();

        emit(SublimeLoaded({
          "myLists": _myLists,
          "sharedLists": _sharedLists,
          "totalCount": _myLists.length + _sharedLists.length,
          "lastUpdated": DateTime.now(),
        }));
        //emit(SublimeLoaded(apiResponse.data!));
      } else {
        emit(SublimeError(apiResponse.message ?? 'Failed to fetch items'));
      }
    } catch (e) {
      emit(SublimeError('Error fetching items: $e'));
    }
  }
}
