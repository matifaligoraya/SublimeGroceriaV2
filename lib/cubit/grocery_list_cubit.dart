import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/cubit/basecubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list.dart';
import 'package:sublime_groceria/repositories/religionrepository/grocery_list_repository.dart';

class GroroceryListCubit extends BaseCubit<GroceryList> {
  final GroceryListRepository repository;

  GroroceryListCubit(this.repository) : super(SublimeInitial());

  void fetchItems() async {
    emit(SublimeLoading());
    try {
      final rawData = await repository.get(
        url: ApiConfig.GLIST,
      );

      loadStates(
        rawData: rawData,
        fromJson: (json) => GroceryList.fromJson(json),
      );
    } catch (e) {
      emit(SublimeError(e.toString()));
    }
  }
}
