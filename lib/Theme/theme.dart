import 'package:flutter/material.dart';

class MyAppTheme {
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Bhloo Bhai 2",
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color.fromARGB(255, 255, 251, 240),
    inputDecorationTheme: InputDecorationTheme().copyWith(
      hintStyle: const TextStyle(fontSize: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          // width: 1.9,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      contentPadding: const EdgeInsets.all(20),
    ),
  );

  // Dark theme
  static ThemeData darkTheme = ThemeData();
}
