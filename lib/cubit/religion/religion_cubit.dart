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
      final religions = await repository.get<List<Religion>>(
        url: API.RELIGION,
        fromJsonT: (json) => (json as List<dynamic>)
            .map((item) => Religion.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
      if (religions.data != null) {
        emit(SublimeLoaded(religions.data!));
      } else {
        emit(SublimeError(religions.message ?? 'No religions found.'));
      }
    } catch (e) {
      emit(SublimeError(e.toString()));
    }
  }
}
