import 'package:sublime_groceria/cubit/basecubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/Recipes/recipes.dart';
import 'package:sublime_groceria/repositories/Recipesrepository.dart';

class RecipesCubit extends BaseCubit<List<Recipes>> {
  final RecipesRepository repository;

  RecipesCubit(this.repository) : super(SublimeInitial());

  void fetchrecipes() async {
    emit(SublimeLoading());
    try {
      final rawdata = await repository.fetchrecipes();

      emit(SublimeLoaded({
        "recipes": rawdata,
      }));
    } catch (e) {
      emit(SublimeError(e.toString()));
    }
  }
}
