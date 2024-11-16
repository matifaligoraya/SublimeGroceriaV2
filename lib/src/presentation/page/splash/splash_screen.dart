import 'package:sublime_groceria/src/common/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/src/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Future.microtask(
        () => context.read<AuthenticatorWatcherBloc>().add(
              const AuthenticatorWatcherEvent.authCheckRequest(),
            ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            authenticating: (_) {},
            authenticated: (_) {
              context.replaceNamed(AppRoutes.DASHBOARD_ROUTE_NAME);
            },
            isFirstTime: (_) {},
            unauthenticated: (_) {
              context.replaceNamed(AppRoutes.LOGIN_ROUTE_NAME);
            });
      },
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Splash Screen. ok',
                      style: TextStyle(
                        // color: Theme.of(context).primaryColor,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
