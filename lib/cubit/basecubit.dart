import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/common/response.dart';

abstract class BaseCubit<T> extends Cubit<SublimeState<List<T>>> {
  BaseCubit(SublimeState<List<T>> initialState) : super(initialState);

  void loadStates({
    required dynamic rawData,
    required T Function(Map<String, dynamic>) fromJson,
  }) {
    final apiResponse = ApiResponse<List<T>>.fromJson(
      rawData,
      (json) => (json as List)
          .map((item) => fromJson(item as Map<String, dynamic>))
          .toList(),
    );

    // Handle status and data
    if (apiResponse.statusCode == 200 && apiResponse.data != null) {
      //emit(SublimeLoaded(apiResponse.data!));
    } else {
      emit(SublimeError(apiResponse.message ?? 'Failed to fetch items'));
    }
  }
}
