import 'package:curie/src/controllers/settings_controller.dart';
import 'package:flutter/material.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key, required this.controller}) : super(key: key);

  static const routeName = '/settings';

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle textStyle = theme.textTheme.bodyText2!;
    final List<Widget> aboutBoxChildren = <Widget>[
      const SizedBox(height: 24),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                style: textStyle,
                text: "Flutter is Google's UI toolkit for building beautiful, "
                    'natively compiled applications for mobile, web, and desktop '
                    'from a single codebase. Learn more about Flutter at '),
            TextSpan(
                style: textStyle.copyWith(color: theme.colorScheme.primary),
                text: 'https://flutter.dev'),
            TextSpan(style: textStyle, text: '.'),
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1184,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    // When a user selects a theme from the dropdown list, the
                    // SettingsController is updated, which rebuilds the MaterialApp.
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text('App theme:'),
                            const SizedBox(width: 10),
                            DropdownButton<ThemeMode>(
                              // Read the selected themeMode from the controller
                              value: controller.themeMode,
                              // Call the updateThemeMode method any time the user selects a theme.
                              onChanged: controller.updateThemeMode,
                              items: const [
                                DropdownMenuItem(
                                  value: ThemeMode.system,
                                  child: Text('System Theme'),
                                ),
                                DropdownMenuItem(
                                  value: ThemeMode.light,
                                  child: Text('Light Theme'),
                                ),
                                DropdownMenuItem(
                                  value: ThemeMode.dark,
                                  child: Text('Dark Theme'),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const Text('Language:'),
                            const SizedBox(width: 10),
                            DropdownButton<Locale>(
                              // Read the selected localeMode from the controller
                              value: controller.locale,
                              // Call the updateLocaleMode method any time the user selects a theme.
                              onChanged: controller.updateLocale,
                              items: const [
                                DropdownMenuItem(
                                  value: Locale('en', ''),
                                  child: Text('🇺🇸 English'),
                                ),
                                DropdownMenuItem(
                                  value: Locale('pt', ''),
                                  child: Text('🇧🇷 Português'),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Divider(),
                        AboutListTile(
                          icon: const Icon(Icons.info),
                          applicationIcon: const FlutterLogo(),
                          applicationName: 'Show About Example',
                          applicationVersion: 'August 2019',
                          applicationLegalese:
                              '\u{a9} 2014 The Flutter Authors',
                          aboutBoxChildren: aboutBoxChildren,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
