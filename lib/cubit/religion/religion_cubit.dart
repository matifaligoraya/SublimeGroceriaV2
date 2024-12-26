import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/religion.dart';
import 'package:sublime_groceria/repositories/religionrepository/religionrepository.dart';

class ReligionCubit extends Cubit<SublimeState<List<Religion>>> {
  final ReligionRepository repository;

  ReligionCubit(this.repository) : super(SublimeInitial());

  void fetchReligions() async {
    emit(SublimeLoading());
    try {
      final rawData = await repository.get(
        url: ApiConfig.RELIGION,
      );
      final religions = (rawData['data'] as List)
          .map((json) => Religion.fromJson(json as Map<String, dynamic>))
          .toList();
      emit(SublimeLoaded({'asd': religions}));
    } catch (e) {
      emit(SublimeError(e.toString()));
    }
  }
}
