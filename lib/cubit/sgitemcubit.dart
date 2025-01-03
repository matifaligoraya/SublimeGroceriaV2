import 'package:sublime_groceria/cubit/basecubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/item/sgitem.dart';
import 'package:sublime_groceria/repositories/sgitemrepository.dart';

class SgItemCubit extends BaseCubit<List<SgItem>> {
  final SgItemRepository repository;

  SgItemCubit(this.repository) : super(SublimeInitial());

  void fetchItems() async {
    emit(SublimeLoading());
    try {
      final rawData = await repository.fetchgroceryitems();

      emit(SublimeLoaded({
        "data": rawData,
      }));
    } catch (e) {
      emit(SublimeError(e.toString()));
    }
  }
}
