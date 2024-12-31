import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sublime_groceria/presentation/cubit/theme/theme_cubit.dart';

class SublimeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isDrawerRequired;
  final VoidCallback? onPressed;

  const SublimeAppBar(
      {super.key,
      required this.title,
      required this.isDrawerRequired,
      this.onPressed});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = context.read<ThemeCubit>();
    ThemeMode currentTheme = context.watch<ThemeCubit>().state;

    return AppBar(
      leading: isDrawerRequired
          ? IconButton(
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).indicatorColor,
              ),
              onPressed: onPressed, // Call onPressed directly here
            )
          : IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).indicatorColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
      title: Text(title),
      actions: [
        IconButton(
          icon: Icon(
            currentTheme == ThemeMode.light
                ? Icons.dark_mode
                : Icons.light_mode,
          ),
          onPressed: () {
            themeCubit.changeTheme();
          },
        ),
      ],
    );
  }
}
