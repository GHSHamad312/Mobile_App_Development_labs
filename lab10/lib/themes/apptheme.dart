import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Colors.pinkAccent;
  static final Color accent = Colors.white;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: accent,
    appBarTheme: AppBarTheme(
      color: accent,
      elevation: 1,
      iconTheme: IconThemeData(color: primary),
      titleTextStyle: TextStyle(
        color: primary,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),
  );
}
