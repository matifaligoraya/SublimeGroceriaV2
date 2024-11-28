import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/item/sgitem.dart';
import 'package:sublime_groceria/repositories/sgitemrepository.dart';

class SgItemCubit extends Cubit<SublimeState<List<SgItem>>> {
  final SgItemRepository repository;

  SgItemCubit(this.repository) : super(SublimeInitial());

  void fetchItems() async {
    emit(SublimeLoading());
    try {
      final SgItems = await repository.get<List<SgItem>>(
        url: API.SGITEMS,
        fromJsonT: (json) => (json as List<dynamic>)
            .map((item) => SgItem.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
      if (SgItems.data != null) {
        emit(SublimeLoaded(SgItems.data!));
      } else {
        emit(SublimeError(SgItems.message ?? 'No religions found.'));
      }
    } catch (e) {
      emit(SublimeError(e.toString()));
    }
  }
}
