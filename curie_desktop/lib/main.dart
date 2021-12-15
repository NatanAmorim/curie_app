import 'dart:io';

import 'package:curie_desktop/src/app.dart';
import 'package:curie_desktop/src/settings/settings_controller.dart';
import 'package:curie_desktop/src/settings/settings_service.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path/path.dart' as path_helper;
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  final Directory documentsFolder = await getApplicationDocumentsDirectory();

  Hive.init(path_helper.join(documentsFolder.path, 'Curie Desktop'));

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
