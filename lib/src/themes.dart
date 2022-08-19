import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  textTheme: ThemeData.light().textTheme.copyWith(
        button: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF3f50b5),
  ),
  scrollbarTheme: ScrollbarThemeData(
    thumbVisibility: MaterialStateProperty.all(true),
    thumbColor: MaterialStateProperty.all(Colors.grey),
    thickness: MaterialStateProperty.all(10),
    radius: Radius.zero,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
      textStyle: const TextStyle(color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.pinkAccent,
  ),
  scaffoldBackgroundColor: const Color(0xFFE9EBEE),
  cardTheme: const CardTheme(color: Colors.white),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    secondary: Colors.pinkAccent,
  ),
  toggleableActiveColor: Colors.orangeAccent,
  unselectedWidgetColor: Colors.grey,
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  textTheme: ThemeData.dark().textTheme.copyWith(
        button: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
  scrollbarTheme: ScrollbarThemeData(
    thumbVisibility: MaterialStateProperty.all(true),
    thumbColor: MaterialStateProperty.all(Colors.grey),
    thickness: MaterialStateProperty.all(10),
    radius: Radius.zero,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.pinkAccent,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    secondary: Colors.pinkAccent,
    error: const Color(
      0xFFCF6679,
    ),
    brightness: Brightness.dark,
  ).copyWith(),
  toggleableActiveColor: Colors.orangeAccent,
  unselectedWidgetColor: Colors.grey,
);
