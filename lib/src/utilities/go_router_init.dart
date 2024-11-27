import 'package:sublime_groceria/src/common/routes.dart';
import 'package:sublime_groceria/src/presentation/bloc/Religion/Religion_bloc.dart';
import 'package:sublime_groceria/src/presentation/page/auth/sign_up_screen.dart';
import 'package:sublime_groceria/src/presentation/page/dashboard/dashboard_screen.dart';
import 'package:sublime_groceria/src/presentation/page/error/error_screen.dart';
import 'package:sublime_groceria/src/presentation/page/home/Home_Screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/src/presentation/page/home/login_screen.dart';
import 'package:sublime_groceria/src/utilities/logger.dart';

GoRouter routerinit = GoRouter(
  routes: <RouteBase>[
    ///  =================================================================
    ///  ********************** Splash Route *****************************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.LOGIN_ROUTE_NAME,
      path: AppRoutes.LOGIN_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),

    ///  =================================================================
    /// ********************** Authentication Routes ********************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.HOME_ROUTE_NAME,
      path: AppRoutes.HOME_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreens(
          religionBloc: ReligionBloc(),
        );
      },
    ),
    GoRoute(
      name: AppRoutes.SIGNUP_ROUTE_NAME,
      path: AppRoutes.SIGNUP_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SignUnPage();
      },
    ),
    // GoRoute(
    //   name: AppRoutes.DRAWER,
    //   path: AppRoutes.DRAWER_PATH,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const Drawer();
    //   },
    // ),

    ///  =================================================================
    /// ********************** DashBoard Route ******************************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.DASHBOARD_ROUTE_NAME,
      path: AppRoutes.DASHBOARD_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const DashBoardScreen();
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: ErrorScreen());
  },
  redirect: (context, state) {
    logger.info('redirect: ${state.uri}');
    return null;
  },
);
