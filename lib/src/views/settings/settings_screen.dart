import 'package:curie/src/controllers/settings_controller.dart';
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
              text: 'https://github.com/NatanAmorim/curie',
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
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 786, // 770 for the content and 16 for the padding
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          AppLocalizations.of(context)!.general,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Card(
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              ListTile(
                                leading: const Icon(Icons.palette),
                                trailing: const Icon(Icons.arrow_right),
                                title: Text(
                                    AppLocalizations.of(context)!.appTheme),
                                onTap: () {
                                  final ThemeMode oldTheme =
                                      controller.themeMode;

                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text(
                                        AppLocalizations.of(context)!
                                            .selectTheme,
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
                                                groupValue:
                                                    controller.themeMode,
                                                onChanged:
                                                    controller.updateThemeMode,
                                              ),
                                              RadioListTile<ThemeMode>(
                                                title: Text(
                                                  AppLocalizations.of(context)!
                                                      .lightTheme,
                                                ),
                                                value: ThemeMode.light,
                                                groupValue:
                                                    controller.themeMode,
                                                onChanged:
                                                    controller.updateThemeMode,
                                              ),
                                              RadioListTile<ThemeMode>(
                                                title: Text(
                                                  AppLocalizations.of(context)!
                                                      .darkTheme,
                                                ),
                                                value: ThemeMode.dark,
                                                groupValue:
                                                    controller.themeMode,
                                                onChanged:
                                                    controller.updateThemeMode,
                                              ),
                                              const Divider(),
                                            ],
                                          ),
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            if (oldTheme !=
                                                controller.themeMode) {
                                              controller
                                                  .updateThemeMode(oldTheme);
                                            }

                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            AppLocalizations.of(context)!
                                                .cancel,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: Text(
                                            AppLocalizations.of(context)!.ok,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                              ListTile(
                                leading: const Icon(Icons.language),
                                trailing: const Icon(Icons.arrow_right),
                                title: Text(
                                  AppLocalizations.of(context)!.appLanguage,
                                ),
                                onTap: () {
                                  final Locale oldLocale = controller.locale;

                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text(
                                        AppLocalizations.of(context)!
                                            .selectLanguage,
                                      ),
                                      content: Scrollbar(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              const Divider(),
                                              RadioListTile<Locale>(
                                                title:
                                                    const Text('English 🇺🇸'),
                                                value: const Locale('en', ''),
                                                groupValue: controller.locale,
                                                onChanged:
                                                    controller.updateLocale,
                                              ),
                                              RadioListTile<Locale>(
                                                title: const Text(
                                                    'Português 🇧🇷'),
                                                value: const Locale('pt', ''),
                                                groupValue: controller.locale,
                                                onChanged:
                                                    controller.updateLocale,
                                              ),
                                              const Divider(),
                                            ],
                                          ),
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            if (oldLocale !=
                                                controller.locale) {
                                              controller
                                                  .updateLocale(oldLocale);
                                            }

                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            AppLocalizations.of(context)!
                                                .cancel,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: Text(
                                            AppLocalizations.of(context)!.ok,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
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
                          ).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
