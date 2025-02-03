import 'package:flutter/material.dart';
import 'package:messanger_app_ui/domain/constant/app_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColor.scafoldLight,
      brightness: Brightness.light,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style:
            ElevatedButton.styleFrom(backgroundColor: AppColor.buttonLightMode),
      ),
      textTheme: const TextTheme(
          bodySmall: TextStyle(color: AppColor.textLightMode),
          bodyLarge: TextStyle(color: AppColor.textLightMode),
          bodyMedium: TextStyle(color: AppColor.textLightMode)));

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: AppColor.scafoldDark,
      brightness: Brightness.dark,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.buttonDarkMode)),
      textTheme: const TextTheme(
          bodySmall: TextStyle(color: AppColor.textDarkMode),
          bodyLarge: TextStyle(color: AppColor.textDarkMode),
          bodyMedium: TextStyle(color: AppColor.textDarkMode)));
}
