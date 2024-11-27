part of 'login_form_bloc.dart';

abstract class LoginFormEvent {
  const LoginFormEvent();
}

class EmailChanged extends LoginFormEvent {
  EmailChanged({required this.email});
  final String email;
}

class PasswordChanged extends LoginFormEvent {
  PasswordChanged({required this.password});
  final String password;
}

class LoginApi extends LoginFormEvent {}
