import 'package:flutter/material.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';

class Appthemes {
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.scaffoldLight,
      brightness: Brightness.light,
      elevatedButtonTheme:  ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonLightMode
        )
      ),
      textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: AppColors.textlightMode,
          ),
          bodyLarge: TextStyle(
            color: AppColors.textlightMode,
          )));

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldDrak,
    brightness: Brightness.dark,
    elevatedButtonTheme:  ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonDarkMode
        )
      ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: AppColors.textDarkMode
      ),
      bodyLarge: TextStyle(
        color: AppColors.textDarkMode
      )
    )
  );
}
