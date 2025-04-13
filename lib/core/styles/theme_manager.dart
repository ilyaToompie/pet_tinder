import 'package:flutter/material.dart';
import 'package:pet_tinder/core/styles/app_colors.dart';

class ThemeConfig {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Unbounded',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background1,
    iconTheme: IconThemeData(color: AppColors.secondary),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Unbounded',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.secondary,
    iconTheme: IconThemeData(color: AppColors.primary),
  );
}
