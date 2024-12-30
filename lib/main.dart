import 'dart:async';

import 'package:sublime_groceria/common/SublimeDS.dart';
import 'package:sublime_groceria/cubit/groceryList/grocery_list_cubit.dart';
import 'package:sublime_groceria/localization/applocalization.dart';
import 'package:sublime_groceria/presentation/bloc/login_form/login_form_bloc.dart';
import 'package:sublime_groceria/presentation/cubit/theme/theme_cubit.dart';
import 'package:sublime_groceria/repositories/religionrepository/grocery_list_repository.dart';
import 'package:sublime_groceria/utilities/go_router_init.dart';
import 'package:sublime_groceria/utilities/logger.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:sublime_groceria/common/themes.dart';
import 'package:sublime_groceria/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';
import 'package:sublime_groceria/utilities/app_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './injection.dart' as di;
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  logger.runLogging(
    () => runZonedGuarded(
      () {
        WidgetsFlutterBinding.ensureInitialized();
        Bloc.transformer = bloc_concurrency.sequential();
        Bloc.observer = const AppBlocObserver();
        SublimeDS().init();
        di.init();

        runApp(MyApp());
      },
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<AuthenticatorWatcherBloc>()),
        BlocProvider(create: (_) => di.locator<LoginFormBloc>()),
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider<GroroceryListPostCubit>(
          create: (context) => GroroceryListPostCubit(GroceryListRepository()),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(builder: (context, themeMode) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Bloc Clean Architecture',
          theme: themeLight(context),
          darkTheme: themeDark(context),
          themeMode: themeMode,
          routerConfig: routerinit,

          supportedLocales: [
            Locale('en', ''), // English
            Locale('es', ''), // Spanish
            Locale('da', ''), // Danish
          ],
          localizationsDelegates: [
            SublimeLocal.delegate, // Your custom localization delegate
            GlobalMaterialLocalizations.delegate, // Material localization
            GlobalWidgetsLocalizations.delegate, // Widgets localization
            // GlobalCupertinoLocalizations.delegate, // Cupertino localization
          ],
          locale: Locale('en'), // Default locale
        );
      }),
    );
  }
}
