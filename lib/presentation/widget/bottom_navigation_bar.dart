import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/common/routes.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTapNavbar;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTapNavbar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 6,
      shape: const CircularNotchedRectangle(),
      height: 65,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home,
                  color: currentIndex == 0
                      ? ColorLight.primary
                      : Theme.of(context).colorScheme.inverseSurface),
              onPressed: () => onTapNavbar(0),
            ),
            IconButton(
              icon: Icon(Icons.list,
                  color: currentIndex == 1
                      ? ColorLight.primary
                      : Theme.of(context).colorScheme.inverseSurface),
              onPressed: () => context.go(AppRoutes.GROCERY_ITEM_PATH),
            ),
            const SizedBox(width: 40), // Space for the notch
            IconButton(
              icon: Icon(Icons.book,
                  color: currentIndex == 2
                      ? ColorLight.primary
                      : Theme.of(context).colorScheme.inverseSurface),
              onPressed: () => context.go(AppRoutes.SGITEM_ROUTE_PATH),
            ),
            IconButton(
              icon: Icon(Icons.account_circle,
                  color: currentIndex == 3
                      ? ColorLight.primary
                      : Theme.of(context).colorScheme.inverseSurface),
              onPressed: () => context.go(AppRoutes.RELIGION_ROUTE_PATH),
            ),
          ],
        ),
      ),
    );
  }
}
