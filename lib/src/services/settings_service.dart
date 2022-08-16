import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// A service that stores and retrieves user settings.
class SettingsService {
  // Loads the User's preferred ThemeMode from local storage.
  Future<ThemeMode> themeMode() async {
    final SharedPreferences localStorage =
        await SharedPreferences.getInstance();
    final String? themeMode = localStorage.getString('ThemeMode');

    switch (themeMode) {
      case 'system':
        return ThemeMode.system;

      case 'light':
        return ThemeMode.light;

      case 'dark':
        return ThemeMode.dark;

      default:
        return ThemeMode.system;
    }
  }

  // Persists the user's preferred ThemeMode to local storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    final SharedPreferences localStorage =
        await SharedPreferences.getInstance();

    switch (theme) {
      case ThemeMode.system:
        await localStorage.setString('ThemeMode', 'system');
        break;

      case ThemeMode.light:
        await localStorage.setString('ThemeMode', 'light');
        break;

      case ThemeMode.dark:
        await localStorage.setString('ThemeMode', 'dark');
        break;

      default:
        await localStorage.setString('ThemeMode', 'system');
        break;
    }
  }

  // Loads the User's preferred locale from local storage.
  Future<Locale> locale() async {
    final SharedPreferences localStorage =
        await SharedPreferences.getInstance();
    final String? locale = localStorage.getString('locale');

    switch (locale) {
      case 'en':
        return const Locale('en', '');

      case 'pt':
        return const Locale('pt', '');

      default:
        return const Locale('en', '');
    }
  }

  // Persists the user's preferred Locale to local storage.
  Future<void> updateLocale(Locale locale) async {
    final SharedPreferences localStorage =
        await SharedPreferences.getInstance();

    switch (locale.languageCode) {
      case 'en':
        await localStorage.setString('locale', 'en');
        break;

      case 'pt':
        await localStorage.setString('locale', 'pt');
        break;

      default:
        await localStorage.setString('locale', 'en');
        break;
    }
  }
}
