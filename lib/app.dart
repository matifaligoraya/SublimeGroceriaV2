import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:sublime_groceria/common/themes.dart';
import 'package:sublime_groceria/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';
import 'package:sublime_groceria/presentation/bloc/login_form/login_form_bloc.dart';
import 'package:sublime_groceria/presentation/cubit/theme/theme_cubit.dart';
import 'package:sublime_groceria/utilities/app_bloc_observer.dart';
import 'package:sublime_groceria/utilities/go_router_init.dart';
import 'package:sublime_groceria/utilities/logger.dart';

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
        BlocProvider(create: (_) => di.locator<LoginFormBloc>()),
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
