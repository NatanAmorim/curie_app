import 'package:curie/src/app.dart';
import 'package:curie/src/controllers/settings_controller.dart';
import 'package:curie/src/services/settings_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Set up the SettingsController, which will glue user settings to multiple
// Flutter Widgets.
final settingsProvider = ChangeNotifierProvider(
  (ref) => SettingsController(SettingsService()),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
