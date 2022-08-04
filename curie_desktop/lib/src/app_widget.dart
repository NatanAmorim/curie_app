import 'package:curie_desktop/src/controllers/settings_controller.dart';
import 'package:curie_desktop/src/routes.dart';
import 'package:curie_desktop/src/themes.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    final Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(final BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Curie',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: settingsController.themeMode,
          // home: const LoginScreen(),
          onGenerateRoute: onGenerateRoute,
        );
      },
    );
  }
}
