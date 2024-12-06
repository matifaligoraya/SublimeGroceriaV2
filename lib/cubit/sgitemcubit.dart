import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/cubit/basecubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/item/sgitem.dart';
import 'package:sublime_groceria/repositories/sgitemrepository.dart';

class SgItemCubit extends BaseCubit<SgItem> {
  final SgItemRepository repository;

  SgItemCubit(this.repository) : super(SublimeInitial());

  void fetchItems() async {
    emit(SublimeLoading());
    try {
      final rawData = await repository.get(
        url: ApiConfig.SGITEMS,
      );

      loadStates(
        rawData: rawData,
        fromJson: (json) => SgItem.fromJson(json),
      );
    } catch (e) {
      emit(SublimeError(e.toString()));
    }
  }
}
