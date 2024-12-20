import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/common/routes.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: ColorLight.bg,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the Religion Screen
                context.go(AppRoutes.RELIGION_ROUTE_PATH);
              },
              child: const Text('Go to Religion Screen'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the Religion Screen
                context.go(AppRoutes.GROCERY_ITEM_PATH);
              },
              child: const Text('Go to Grocery List Screen'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the Religion Screen
                context.go(AppRoutes.SGITEM_ROUTE_PATH);
              },
              child: const Text('Go to Grocery items Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
