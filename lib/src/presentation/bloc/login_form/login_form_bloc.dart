import 'dart:async';
import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sublime_groceria/src/common/SublimeDS.dart';

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
    Map data = {'vUserName': state.email, 'vPassword': state.password};

    try {
      final response = await http.post(
        Uri.parse("https://api.sublimecarecloud.com/Auth/login"),
        headers: SublimeDS().headerOfApi(),
        body: jsonEncode(data),
      );

      var data1 = jsonDecode(response.body);

      if (response.statusCode == 200) {
        print('Server error: ${response.statusCode}');
        final token = data1['userMeta']?['token'];
        if (token != null) {
          await SublimeDS().saveToken(token);
          print('Token stored: $token');
        } else {
          print('Token not found in response');
        }

        emit(state.copyWith(
          loginState: LoginState.success,
          message: data1['Success'] ?? 'Login Successful',
        ));
      } else {
        emit(state.copyWith(
          loginState: LoginState.message,
          message: data1['Error'] ?? 'Something Went Wrong',
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

  // Future<void> testToken() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final storedToken = prefs.getString('auth_token');
  //   if (storedToken != null) {
  //     print('Token from SharedPreferences: $storedToken');
  //   } else {
  //     print('No token found in SharedPreferences.');
  //   }
  // }
}
