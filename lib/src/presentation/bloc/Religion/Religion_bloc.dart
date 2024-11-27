import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sublime_groceria/src/common/SublimeDS.dart';
import 'package:sublime_groceria/src/common/api.dart';
import 'package:sublime_groceria/src/presentation/Models/religion_model.dart';

part 'Religion_event.dart';
part 'Religion_state.dart';

class ReligionBloc extends Bloc<ReligionEvent, ReligionState> {
  ReligionBloc() : super(Religionfetching.initial()) {
    on<ReligionInitialEvent>(religionInitialEvent);
  }

  FutureOr<void> religionInitialEvent(
      ReligionInitialEvent event, Emitter<ReligionState> emit) async {
    List<ReligionModel> religions = [];
    try {
      emit(Religionfetching(religions: []));
      await SublimeDS().init();
      final headers = SublimeDS().headerOfApi();

      var response = await http.get(
        Uri.parse(API.RELIGION),
        headers: headers,
      );

      // Print the raw response to debug
      print('API Response: ${response.body}');

      if (response.statusCode == 200) {
        // Decode the response
        final decodedResponse = jsonDecode(response.body);
        final token = decodedResponse['userMeta']?['token'];
        if (token != null) {
          final retrievedToken = SublimeDS().getToken();
          print("Retrieved Token: $retrievedToken");
          await SublimeDS().saveToken(token);
        } else {
          print('Token not found in response');
        }

        // Ensure we check if 'data' exists and is a List
        if (decodedResponse['data'] is List) {
          // Explicitly map the List<dynamic> to List<ReligionModel>
          religions = (decodedResponse['data'] as List)
              .map((item) => ReligionModel.fromJson(item))
              .toList();
          emit(Religionfetching(religions: religions)); // Emit fetched data
        } else {
          throw Exception(
              "Unexpected response format, 'data' field is not a List.");
        }
      } else {
        throw Exception("API Error: ${response.statusCode}");
      }
    } catch (e) {
      // Print the error to debug
      print('Error fetching data: $e');

      // Emit an error state with a descriptive message
      emit(ReligionError(message: "API Error: $e"));
    }
  }
}
