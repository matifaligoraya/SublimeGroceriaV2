import 'package:sublime_groceria/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeLight(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    primary: ColorLight.primary,
    secondary: ColorLight.secondary,
    widgetstitle: ColorLight.widgetstitle,
    homecard: ColorLight.homecard,
    bg: ColorLight.bg,
    widgetsbg: ColorLight.widgetsbg,
    indicatorColor: ColorLight.widgetstitle,
    buttons: ColorLight.buttons,
    link: ColorLight.link,
    carbohydrates: ColorLight.carbohydrates,
    cardColor: ColorLight.cardcolor,
    proteins: ColorLight.proteins,
    fats: ColorLight.fats,
    disabledColor: ColorLight.indicator,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.DarkSpringGreen,
      onPrimary: AppColors.White,
      secondary: AppColors.Amber,
      onSecondary: AppColors.Onyx,
      tertiary: AppColors.TealBlue,
      onTertiary: AppColors.White,
      surface: AppColors.White,
      inverseSurface: AppColors.Onyx,
      onSurface: AppColors.White,
      error: AppColors.FireEngineRed,
      onError: AppColors.White,
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.grey[100]),
    iconTheme: const IconThemeData(
      color: AppColors.Onyx,
    ),
    primaryColor: ColorLight.primary,
    cardTheme: CardTheme(color: AppColors.White),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorLight.primary,
    ),
    checkboxTheme: const CheckboxThemeData(
      side: BorderSide(
        color: ColorLight.widgetstitle,
      ),
    ),
    scaffoldBackgroundColor: ColorLight.white,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: AppColors.Onyx, fontSize: 24, fontWeight: FontWeight.w600),
        backgroundColor: Colors.transparent,
        actionsIconTheme: IconThemeData(color: AppColors.Onyx)),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppins(
        color: AppColors.DarkSpringGreen,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: GoogleFonts.poppins(
        color: AppColors.DarkSpringGreen,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: GoogleFonts.poppins(
        color: AppColors.DarkSpringGreen,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: AppColors.Onyx,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: AppColors.Onyx,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: ColorLight.widgetstitle,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: ColorLight.primary,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleLarge: GoogleFonts.poppins(
          color: AppColors.DarkSpringGreen,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      titleMedium: GoogleFonts.poppins(
        color: AppColors.Onyx,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: GoogleFonts.poppins(
        color: ColorLight.widgetstitle,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelSmall: GoogleFonts.poppins(
        color: AppColors.Info,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

ThemeData themeDark(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    primary: ColorLight.primary,
    secondary: ColorDark.secondary,
    widgetstitle: ColorLight.widgetstitle,
    homecard: ColorLight.homecard,
    canvasColor: ColorDark.bg,
    widgetsbg: ColorLight.widgetsbg,
    indicatorColor: ColorLight.bg,
    disabledColor: ColorDark.indicator,
    buttons: ColorLight.buttons,
    link: ColorLight.link,
    carbohydrates: ColorLight.carbohydrates,
    cardColor: ColorDark.cardcolor,
    proteins: ColorLight.proteins,
    fats: ColorLight.fats,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.DarkSpringGreen,
      onPrimary: AppColors.White,
      secondary: AppColors.Amber,
      onSecondary: AppColors.Onyx,
      tertiary: AppColors.TealBlue,
      onTertiary: AppColors.White,
      surface: AppColors.Onyx,
      inverseSurface: AppColors.White,
      onSurface: AppColors.White,
      error: AppColors.FireEngineRed,
      onError: AppColors.White,
    ),
    iconTheme: const IconThemeData(
      color: ColorDark.secondary,
    ),
    primaryColor: ColorLight.bg,
    cardTheme: CardTheme(color: AppColors.Onyx),
    bottomAppBarTheme: BottomAppBarTheme(
      color: AppColors.Onyx,
      surfaceTintColor: Colors.white,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorLight.primary,
    ),
    checkboxTheme: const CheckboxThemeData(
      side: BorderSide(
        color: ColorLight.widgetstitle,
      ),
    ),
    scaffoldBackgroundColor: AppColors.Onyx,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: AppColors.White, fontSize: 24, fontWeight: FontWeight.w600),
        backgroundColor: Colors.transparent,
        actionsIconTheme: IconThemeData(color: AppColors.White)),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppins(
        color: AppColors.DarkSpringGreen,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: GoogleFonts.poppins(
        color: AppColors.DarkSpringGreen,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: GoogleFonts.poppins(
        color: AppColors.DarkSpringGreen,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: AppColors.White,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: AppColors.White,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: AppColors.White,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: AppColors.White,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleLarge: GoogleFonts.poppins(
          color: AppColors.White, fontSize: 30, fontWeight: FontWeight.bold),
      titleMedium: GoogleFonts.poppins(
        color: AppColors.White,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: GoogleFonts.poppins(
        color: AppColors.White,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelSmall: GoogleFonts.poppins(
        color: AppColors.Info,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
