import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'palette.dart';

class MyTheme {
  static final themeData = ThemeData(
    primarySwatch: Palette.primary,
    scaffoldBackgroundColor: AppColors.primary,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
            vertical: 10,
          )),
          backgroundColor: MaterialStateProperty.all(
            AppColors.darkGreen,
          ),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
    ),
    primaryIconTheme: const IconThemeData(color: AppColors.green, size: 14),
    iconTheme: const IconThemeData(
      color: AppColors.green,
      size: 14,
    ),
    cardTheme: CardTheme(
      color: AppColors.green,
      elevation: 1,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.green),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.white,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: AppColors.white)),
    ),
  );
}
