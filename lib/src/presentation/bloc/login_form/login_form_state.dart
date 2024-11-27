part of 'login_form_bloc.dart';

enum LoginState { initial, loading, success, message }

class LoginFormState {
  LoginFormState({
    this.email = '',
    this.password = '',
    this.message = '',
    this.loginState = LoginState.initial,
  });

  final String email;
  final String password;
  final String message;
  final LoginState loginState;

  LoginFormState copyWith({
    String? email,
    String? password,
    String? message,
    LoginState? loginState,
  }) {
    return LoginFormState(
      email: email ?? this.email,
      password: password ?? this.password,
      message: message ?? this.message,
      loginState: loginState ?? this.loginState,
    );
  }
}
