import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
      colorScheme:
          ThemeData().colorScheme.copyWith(primary: Colors.deepPurple[300]),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurpleAccent),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 16,
              fontWeight: FontWeight.bold)));
}
