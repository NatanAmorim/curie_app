import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  textTheme: ThemeData.light().textTheme.copyWith(
        button: const TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
  scrollbarTheme: ScrollbarThemeData(
    thumbColor: MaterialStateProperty.all(Colors.blueAccent),
    thickness: MaterialStateProperty.all(10),
    radius: Radius.zero,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.lightBlue,
      padding: EdgeInsets.zero,
      textStyle: const TextStyle(color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.green,
    sizeConstraints: BoxConstraints.tightFor(height: 80),
  ),
  scaffoldBackgroundColor: const Color(0xFFE9EBEE),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFE91E63),
  ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  textTheme: ThemeData.dark().textTheme.copyWith(
        button: const TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
  scrollbarTheme: ScrollbarThemeData(
    thickness: MaterialStateProperty.all(10),
    radius: Radius.zero,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.lightBlue,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.green,
    sizeConstraints: BoxConstraints.tightFor(height: 80),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFF278A1),
    primary: const Color(0xFF3469E9),
    error: const Color(
      0xFFCF6679,
    ),
    brightness: Brightness.dark,
  ).copyWith(),
);
