import 'dart:io';

import 'package:curie_desktop/src/controllers/settings_controller.dart';
import 'package:curie_desktop/src/services/settings_service.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import "package:path/path.dart" as path_helper;

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp(settingsController: settingsController));
}
