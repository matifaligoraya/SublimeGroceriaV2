import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sublime_groceria/common/SublimeDS.dart';
import 'package:sublime_groceria/common/api.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc() : super(LoginFormState()) {
    on<EmailChanged>(emailChanged);
    on<PasswordChanged>(passwordChanged);
    on<LoginApi>(loginApi);
  }

  FutureOr<void> emailChanged(
      EmailChanged event, Emitter<LoginFormState> emit) {
    emit(state.copyWith(
      email: event.email,
    ));
  }

  FutureOr<void> passwordChanged(
      PasswordChanged event, Emitter<LoginFormState> emit) {
    emit(state.copyWith(
      password: event.password,
    ));
  }

  FutureOr<void> loginApi(LoginApi event, Emitter<LoginFormState> emit) async {
    emit(state.copyWith(loginState: LoginState.loading));
    print(state);

    // Sample login credentials for testing
    Map data = {'vUserName': 'atigoraya', 'vPassword': 'Abfa\$\$123'};

    try {
      // Sending POST request to login API
      final response = await http.post(
        Uri.parse(ApiConfig.LOGIN),
        headers: SublimeDS().headerOfApi(),
        body: jsonEncode(data),
      );

      var data1 = jsonDecode(response.body);

      if (response.statusCode == 200) {
        print('Server response: ${response.statusCode}');

        // Extracting token and userId from the response
        final token = data1['userMeta']?['token'];
        final userId = data1['data']?['userId']; // Correctly extracting userId

        // Storing token if found
        if (token != null) {
          await SublimeDS().saveToken(token);
          print('Token stored: $token');
        } else {
          print('Token not found in response');
        }

        // Ensuring userId is always treated as a String
        if (userId != null) {
          // If userId is an int, it will be converted to a string using .toString()
          String userIdStr = userId.toString();
          await SublimeDS().saveUserId(userIdStr); // Store userId as String
          print('User ID stored: $userIdStr');
        } else {
          print('User ID not found in response');
        }

        // Emitting success state with the response message
        emit(state.copyWith(
          loginState: LoginState.success,
          message: data1['Success'] ?? 'Login Successful',
        ));
      } else {
        emit(state.copyWith(
          loginState: LoginState.message,
          message: data1['Error'] ??
              'Something Went Wrong', // Fix reference to data1
        ));
      }
    } catch (e) {
      print('Login API Error: $e');
      emit(state.copyWith(
        loginState: LoginState.message,
        message: 'An error occurred while logging in.',
      ));
    }
  }
}
