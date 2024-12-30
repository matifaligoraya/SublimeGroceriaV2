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
    iconTheme: const IconThemeData(
      color: ColorLight.secondary,
    ),
    primaryColor: ColorLight.primary,
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
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppins(
        color: ColorLight.widgetstitle,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: GoogleFonts.poppins(
        color: ColorLight.widgetstitle,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: GoogleFonts.poppins(
        color: ColorLight.widgetstitle,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: ColorLight.primary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: ColorLight.primary,
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
      titleMedium: GoogleFonts.poppins(
        color: ColorLight.widgetstitle,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: GoogleFonts.poppins(
        color: ColorLight.widgetstitle,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: GoogleFonts.poppins(
        color: ColorLight.secondary,
        fontSize: 14,
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
    iconTheme: const IconThemeData(
      color: ColorDark.secondary,
    ),
    primaryColor: ColorLight.bg,
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
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppins(
        color: ColorLight.bg,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: GoogleFonts.poppins(
        color: AppColors.White,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: GoogleFonts.poppins(
        color: AppColors.White,
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
      labelLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
