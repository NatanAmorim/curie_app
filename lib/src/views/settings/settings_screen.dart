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
                text:
                    '(Pre-Alpha) An open-source app for managing small schools'
                    ', made with Flutter.\n'),
            TextSpan(
                style: textStyle.copyWith(color: theme.colorScheme.primary),
                text: 'https://https://github.com/NatanAmorim/curie'),
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
                        ListTile(
                          leading: const Icon(Icons.info),
                          title: const Text('App theme'),
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Choose your theme'),
                              content: Scrollbar(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      const Divider(),
                                      RadioListTile<ThemeMode>(
                                        title: const Text('System Theme'),
                                        value: ThemeMode.system,
                                        groupValue: controller.themeMode,
                                        onChanged: controller.updateThemeMode,
                                      ),
                                      RadioListTile<ThemeMode>(
                                        title: const Text('Light Theme'),
                                        value: ThemeMode.light,
                                        groupValue: controller.themeMode,
                                        onChanged: controller.updateThemeMode,
                                      ),
                                      RadioListTile<ThemeMode>(
                                        title: const Text('Dark Theme'),
                                        value: ThemeMode.dark,
                                        groupValue: controller.themeMode,
                                        onChanged: controller.updateThemeMode,
                                      ),
                                      const Divider(),
                                    ],
                                  ),
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('CANCEL'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('OK'),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(Icons.language),
                          title: const Text('Language'),
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Choose your language'),
                              content: Scrollbar(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      const Divider(),
                                      RadioListTile<Locale>(
                                        title: const Text('English 🇺🇸'),
                                        value: const Locale('en', ''),
                                        groupValue: controller.locale,
                                        onChanged: controller.updateLocale,
                                      ),
                                      RadioListTile<Locale>(
                                        title: const Text('Português 🇧🇷'),
                                        value: const Locale('pt', ''),
                                        groupValue: controller.locale,
                                        onChanged: controller.updateLocale,
                                      ),
                                      const Divider(),
                                    ],
                                  ),
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('CANCEL'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('OK'),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                        AboutListTile(
                          icon: const Icon(Icons.help),
                          applicationIcon: const FlutterLogo(),
                          applicationName: 'Curie',
                          applicationVersion: 'Pre-Alpha',
                          applicationLegalese:
                              '\u{a9} 2022 Natan Amorim S. G. de Moraes',
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
