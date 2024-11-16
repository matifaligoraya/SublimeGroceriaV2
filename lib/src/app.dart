import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:sublime_groceria/src/common/themes.dart';
import 'package:sublime_groceria/src/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';
import 'package:sublime_groceria/src/presentation/bloc/sign_in_form/sign_in_form_bloc.dart';
import 'package:sublime_groceria/src/presentation/cubit/theme/theme_cubit.dart';
import 'package:sublime_groceria/src/utilities/app_bloc_observer.dart';
import 'package:sublime_groceria/src/utilities/go_router_init.dart';
import 'package:sublime_groceria/src/utilities/logger.dart';

import 'package:sublime_groceria/injection.dart' as di;

void main() {
  logger.runLogging(
    () => runZonedGuarded(
      () {
        WidgetsFlutterBinding.ensureInitialized();
        Bloc.transformer = bloc_concurrency.sequential();
        Bloc.observer = const AppBlocObserver();
        di.init();

        runApp(const MyApp());
      },
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<AuthenticatorWatcherBloc>()),
        BlocProvider(create: (_) => di.locator<SignInFormBloc>()),
        BlocProvider(create: (_) => di.locator<ThemeCubit>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc Clean Architecture',
        theme: themeLight(context),
        darkTheme: themeDark(context),
        themeMode: ThemeMode.system,
        routerConfig: routerinit,
      ),
    );
  }
}
