import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sublime_groceria/presentation/cubit/theme/theme_cubit.dart';
import 'package:sublime_groceria/cubit/language_cubit.dart'; // Make sure to implement this Cubit

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
    LanguageCubit languageCubit = context.read<LanguageCubit>();

    return AppBar(
      backgroundColor: Colors.white,
      leading: isDrawerRequired
          ? IconButton(
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).indicatorColor,
              ),
              onPressed: onPressed,
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
            languageCubit.state is LanguageEnglish
                ? Icons.language
                : Icons.translate,
          ),
          onPressed: () {
            languageCubit.toggleLanguage();
          },
        ),
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
