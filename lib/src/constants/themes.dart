import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  textTheme: ThemeData.light().textTheme.copyWith(
        labelLarge: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.indigo,
  ),
  scrollbarTheme: ScrollbarThemeData(
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
    backgroundColor: Colors.indigoAccent,
  ),
  scaffoldBackgroundColor: const Color(0xFFE9EBEE),
  cardTheme: const CardTheme(color: Colors.white),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    secondary: Colors.indigoAccent,
  ),
  unselectedWidgetColor: Colors.grey,
  switchTheme: SwitchThemeData(
    thumbColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return Colors.orangeAccent;
      }
      return null;
    }),
    trackColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return Colors.orangeAccent;
      }
      return null;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return Colors.orangeAccent;
      }
      return null;
    }),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return Colors.orangeAccent;
      }
      return null;
    }),
  ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  textTheme: ThemeData.dark().textTheme.copyWith(
        labelLarge: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
  scrollbarTheme: ScrollbarThemeData(
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
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    secondary: Colors.white,
    error: const Color(
      0xFFCF6679,
    ),
    brightness: Brightness.dark,
  ).copyWith(),
  unselectedWidgetColor: Colors.grey,
  switchTheme: SwitchThemeData(
    thumbColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return Colors.orangeAccent;
      }
      return null;
    }),
    trackColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return Colors.orangeAccent;
      }
      return null;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return Colors.orangeAccent;
      }
      return null;
    }),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return Colors.orangeAccent;
      }
      return null;
    }),
  ),
);
