import 'package:sublime_groceria/common/apiException.dart';
import 'package:sublime_groceria/cubit/basecubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list_post.dart';
import 'package:sublime_groceria/repositories/religionrepository/grocery_list_repository.dart';

class GroroceryListCubit extends BaseCubit<List<GroceryList>> {
  final GroceryListRepository repository;

  GroroceryListCubit(this.repository) : super(SublimeInitial());

  void fetchItems() async {
    emit(SublimeLoading());
    try {
      // Fetch raw data from the repository
      final rawData = await repository.fetchGroceryLists();

      // Handle response status and data
      var _myLists =
          rawData.where((item) => item.isSharedList == false).toList();
      var _sharedLists =
          rawData.where((item) => item.isSharedList == true).toList();
      emit(SublimeLoaded({
        "MyLists": _myLists,
        "SharedLists": _sharedLists,
        "TotalCount": _myLists + _sharedLists,
        "MyListsCount": _myLists.length,
        "SharedListsCount": _sharedLists.length,
        "LastUpdated": DateTime.now(),
      }));
    } catch (e) {
      emit(SublimeError('Error fetching items: $e'));
    }
  }
}

class GroroceryListPostCubit extends BaseCubit<List<GroceryListPost>> {
  final GroceryListRepository repository;

  GroroceryListPostCubit(this.repository) : super(SublimeInitial());

  void updateitems(String listName) async {
    emit(SublimeLoading());

    try {
      final response = await repository.updateGroceryList(listName);
      emit(SublimeLoaded({
        "message": "List successfully updated!",
        "data": response.data,
      }));
    } on ApiException catch (e) {
      emit(SublimeError(e.message, fieldErrors: e.fieldErrors));
    } catch (e) {
      print("Cubit Error: $e");
      emit(SublimeError(e.toString()));
    }
  }
}
