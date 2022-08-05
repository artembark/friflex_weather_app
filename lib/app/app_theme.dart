import 'package:flutter/material.dart';

//класс для управления темой приложения
abstract class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    primarySwatch: Colors.purple,
    snackBarTheme: const SnackBarThemeData(
      shape: StadiumBorder(),
      backgroundColor: Colors.purple,
      behavior: SnackBarBehavior.floating,
      actionTextColor: Colors.white,
    ),
  );
}
