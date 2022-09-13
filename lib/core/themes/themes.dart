import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: Colors.deepPurple[300],
          ),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 18)));
}
