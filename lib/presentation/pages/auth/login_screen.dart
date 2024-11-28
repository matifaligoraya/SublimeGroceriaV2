import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/common/routes.dart';
import 'package:sublime_groceria/presentation/bloc/login_form/login_form_bloc.dart';
import 'package:sublime_groceria/presentation/widget/text_fiel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginFormBloc _loginFormBloc;

  @override
  void initState() {
    super.initState();
    _loginFormBloc = LoginFormBloc();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (_) => _loginFormBloc,
        child: Scaffold(
          backgroundColor: ColorLight.bg,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  // Login Title
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: ColorLight.widgetstitle,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Add Your Detail to Login",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: ColorLight.widgetstitle,
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Text(
                        "Email address",
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorLight.widgetstitle,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  BlocBuilder<LoginFormBloc, LoginFormState>(
                    buildWhen: (previous, current) =>
                        current.email != previous.email,
                    builder: (context, state) {
                      return Loginfields(
                        lable: "atigoraya",
                        suffix: Icon(
                          Icons.check_circle,
                          color: ColorLight.widgetstitle,
                          size: 20,
                        ),
                        onchanged: (value) {
                          context
                              .read<LoginFormBloc>()
                              .add(EmailChanged(email: value));
                        },
                      );
                    },
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorLight.widgetstitle,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  BlocBuilder<LoginFormBloc, LoginFormState>(
                    buildWhen: (previous, current) =>
                        current.password != previous.password,
                    builder: (context, state) {
                      return Loginfields(
                        lable: "Enter Your Password",
                        suffix: Icon(
                          Icons.visibility_off,
                          color: ColorLight.widgetstitle,
                          size: 20,
                        ),
                        onchanged: (value) {
                          context
                              .read<LoginFormBloc>()
                              .add(PasswordChanged(password: value));
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  BlocListener<LoginFormBloc, LoginFormState>(
                    listener: (context, state) {
                      if (state.loginState == LoginState.loading) {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              Center(child: CircularProgressIndicator()),
                        );
                      } else if (state.loginState == LoginState.success) {
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   SnackBar(content: Text('Login Successful!')),
                        // );
                        // Navigator.pushNamed(context, '/home');
                        context.go(AppRoutes.HOME_ROUTE_PATH);
                      }
                    },
                    child: BlocBuilder<LoginFormBloc, LoginFormState>(
                      buildWhen: (previous, current) =>
                          previous.loginState != current.loginState,
                      builder: (context, state) {
                        return ElevatedButton(
                            onPressed: () {
                              context.read<LoginFormBloc>().add(LoginApi());
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              backgroundColor: ColorLight.primary,
                              elevation: 0,
                              minimumSize: Size(400, 50),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(color: ColorLight.bg),
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
