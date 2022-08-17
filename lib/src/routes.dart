import 'package:curie/src/controllers/settings_controller.dart';
import 'package:curie/src/views/error/error_screen.dart';
import 'package:curie/src/views/navigation_test/navigation_test_screen.dart';
import 'package:curie/src/views/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes({
    required this.settingsController,
  });

  final SettingsController settingsController;
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute<void>(
      settings: routeSettings,
      builder: (BuildContext context) {
        switch (routeSettings.name) {
          case SettingsScreen.routeName:
            return SettingsScreen(controller: settingsController);

          case NavigationTestScreen.routeName:
            return const NavigationTestScreen();

          // case LoginScreen.routeName:
          //   return const LoginScreen();

          default:
            return const ErrorScreen();
        }
      },
    );
  }
}
