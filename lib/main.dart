import 'dart:io';

import 'package:curie/src/app.dart';
import 'package:curie/src/controllers/settings_controller.dart';
import 'package:curie/src/services/settings_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_size/window_size.dart';

// Set up the SettingsController, which will glue user settings to multiple
// Flutter Widgets.
/*
* WARNING!
* According to https://docs-v2.riverpod.dev/docs/concepts/providers
* While all providers have their purpose, ChangeNotifierProviders are not
* recommended for scalable applications, because of issues with mutable state.
* It exists in the flutter_riverpod package to provide an easy migration
* path from package:provider, and allows for some flutter specific use-cases
* such as integration with some Navigator 2 packages.
*
* TODO
* See if i can use another provider, and which one should be used.
*/
final settingsProvider = ChangeNotifierProvider(
  (ref) => SettingsController(SettingsService()),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    setWindowTitle('My App');
    setWindowMinSize(const Size(800, 500));
  }

  // This object is where the state of our providers will be stored.
  final providerContainer = ProviderContainer();

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await providerContainer.read(settingsProvider).loadSettings();

  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    UncontrolledProviderScope(
      container: providerContainer,
      child: const App(),
    ),
  );
}
