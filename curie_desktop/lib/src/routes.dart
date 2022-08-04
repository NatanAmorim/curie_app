import 'package:curie_desktop/src/views/error/error_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
  return MaterialPageRoute<void>(
    settings: routeSettings,
    builder: (BuildContext context) {
      switch (routeSettings.name) {
        // case SettingsScreen.routeName:
        //   return SettingsScreen(controller: settingsController);

        // case LoginScreen.routeName:
        //   return const LoginScreen();

        default:
          return const ErrorScreen();
      }
    },
  );
}
