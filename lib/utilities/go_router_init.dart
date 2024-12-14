import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/routes.dart';
import 'package:sublime_groceria/cubit/grocery_list_cubit.dart';
import 'package:sublime_groceria/cubit/religion/religion_cubit.dart';
import 'package:sublime_groceria/cubit/sgitemcubit.dart';
import 'package:sublime_groceria/presentation/pages/dashboard/dashboard_screen.dart';
import 'package:sublime_groceria/presentation/pages/error/error_screen.dart';
import 'package:sublime_groceria/presentation/pages/grocerylist/grocery_list_screen.dart';
import 'package:sublime_groceria/presentation/pages/home/home_screens.dart';
import 'package:sublime_groceria/presentation/pages/auth/login_screen.dart';
import 'package:sublime_groceria/presentation/pages/religion/religion_screen.dart';
import 'package:sublime_groceria/presentation/pages/religion/sgitem_screen.dart';
import 'package:sublime_groceria/repositories/religionrepository/grocery_list_repository.dart';
import 'package:sublime_groceria/repositories/religionrepository/religionrepository.dart';
import 'package:sublime_groceria/repositories/sgitemrepository.dart';
import 'package:sublime_groceria/utilities/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

GoRouter routerinit = GoRouter(
  routes: <RouteBase>[
    /// =================================================================
    /// ************************ Splash Route ***************************
    /// =================================================================
    GoRoute(
      name: AppRoutes.LOGIN_ROUTE_NAME,
      path: AppRoutes.LOGIN_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),

    /// =================================================================
    /// ******************* Authentication Routes ***********************
    /// =================================================================
    GoRoute(
      name: AppRoutes.HOME_ROUTE_NAME,
      path: AppRoutes.HOME_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (_) =>
              ReligionCubit(context as ReligionRepository)..fetchReligions(),
          child: const HomeScreens(),
        );
      },
    ),
    GoRoute(
      name: AppRoutes.RELIGION_ROUTE_NAME,
      path: AppRoutes.RELIGION_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (_) => ReligionCubit(ReligionRepository())..fetchReligions(),
          child: const ReligionScreen(),
        );
      },
    ),
    GoRoute(
      name: AppRoutes.GROCERY_ITEM_NAME,
      path: AppRoutes.GROCERY_ITEM_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (_) => GroroceryListCubit(GroceryListRepository()),
          child: const GroceryListScreen(),
        );
      },
    ),

    /// =================================================================
    /// ********************** DashBoard Route **************************
    /// =================================================================
    GoRoute(
      name: AppRoutes.SGITEM_ROUTE_NAME,
      path: AppRoutes.SGITEM_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (_) => SgItemCubit(SgItemRepository())..fetchItems(),
          child: const SgItemScreen(),
        );
      },
    ),

    /// =================================================================
    /// ********************** Drawer Route *****************************
    /// =================================================================
    GoRoute(
      name: AppRoutes.DRAWER_ROUTE_NAME,
      path: AppRoutes.DRAWER_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const Drawer(); // Ensure Drawer is properly defined.
      },
    ),
  ],

  /// =================================================================
  /// ********************** Error Page *******************************
  /// =================================================================
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: ErrorScreen());
  },

  /// =================================================================
  /// ********************** Redirect Logic ****************************
  /// =================================================================
  redirect: (context, state) {
    logger.info('redirect: ${state.uri}');
    return null; // Adjust this if you have authentication-based redirection.
  },
);
