import 'package:curie/src/controllers/settings_controller.dart';
import 'package:curie/src/templates/widgets/card_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              text: '${AppLocalizations.of(context)!.appDescription}\n',
            ),
            TextSpan(
              style: textStyle.copyWith(color: theme.colorScheme.primary),
              text: 'https://https://github.com/NatanAmorim/curie',
            ),
            TextSpan(style: textStyle, text: '.'),
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settings),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                cardTemplate(
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: const Icon(Icons.palette),
                        trailing: const Icon(Icons.arrow_right),
                        title: Text(AppLocalizations.of(context)!.appTheme),
                        onTap: () => showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(
                              AppLocalizations.of(context)!.selectTheme,
                            ),
                            content: Scrollbar(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const Divider(),
                                    RadioListTile<ThemeMode>(
                                      title: Text(
                                        AppLocalizations.of(context)!
                                            .systemTheme,
                                      ),
                                      value: ThemeMode.system,
                                      groupValue: controller.themeMode,
                                      onChanged: controller.updateThemeMode,
                                    ),
                                    RadioListTile<ThemeMode>(
                                      title: Text(
                                        AppLocalizations.of(context)!
                                            .lightTheme,
                                      ),
                                      value: ThemeMode.light,
                                      groupValue: controller.themeMode,
                                      onChanged: controller.updateThemeMode,
                                    ),
                                    RadioListTile<ThemeMode>(
                                      title: Text(
                                        AppLocalizations.of(context)!.darkTheme,
                                      ),
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
                                child: Text(
                                  AppLocalizations.of(context)!.cancel,
                                ),
                              ),
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text(
                                  AppLocalizations.of(context)!.ok,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.language),
                        trailing: const Icon(Icons.arrow_right),
                        title: Text(
                          AppLocalizations.of(context)!.appLanguage,
                        ),
                        onTap: () => showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(
                              AppLocalizations.of(context)!.selectLanguage,
                            ),
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
                                child: Text(
                                  AppLocalizations.of(context)!.cancel,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  AppLocalizations.of(context)!.ok,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.info),
                        trailing: const Icon(Icons.arrow_right),
                        title: Text(
                          AppLocalizations.of(context)!.aboutCurie,
                        ),
                        onTap: () => showAboutDialog(
                          context: context,
                          applicationIcon: const FlutterLogo(),
                          applicationName: 'Curie',
                          applicationVersion: 'Pre-Alpha',
                          applicationLegalese:
                              '\u{a9} 2022 Natan Amorim S. G. de Moraes',
                          children: aboutBoxChildren,
                        ),
                      ),
                    ],
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
