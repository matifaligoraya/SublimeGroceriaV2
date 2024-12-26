import 'package:shared_preferences/shared_preferences.dart';
import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/cubit/basecubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/Recipes/recipes.dart';
import 'package:sublime_groceria/repositories/Recipesrepository.dart';

class RecipesCubit extends BaseCubit<Recipes> {
  final RecipesRepository repository;

  RecipesCubit(this.repository) : super(SublimeInitial());

  void fetchrecipes() async {
    emit(SublimeLoading());
    try {
      SharedPreferences prefs =
          SharedPreferences.getInstance() as SharedPreferences;
      final String? userId = prefs.getString('userId');

      final rawData = await repository.get(
        url: ApiConfig.SGITEMS,
      );

      loadStates(
        rawData: rawData,
        fromJson: (json) => Recipes.fromJson(json),
      );
    } catch (e) {
      emit(SublimeError(e.toString()));
    }
  }
}
