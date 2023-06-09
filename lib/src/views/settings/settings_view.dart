import 'package:curie/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsView extends ConsumerWidget {
  const SettingsView({
    Key? key,
  }) : super(key: key);

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    final TextStyle textStyle = theme.textTheme.bodyMedium!;
    final List<Widget> aboutBoxChildren = <Widget>[
      const SizedBox(height: 24),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              style: textStyle,
              text: '${localizations.appDescription}\n',
            ),
            TextSpan(
              style: textStyle.copyWith(color: theme.colorScheme.tertiary),
              text: 'https://github.com/NatanAmorim/curie',
            ),
            TextSpan(style: textStyle, text: '.'),
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.settings),
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
                          localizations.general,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Card(
                        // clipBehavior is necessary because, without it, the InkWell's animation
                        // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
                        // This comes with a small performance cost, and you should not set [clipBehavior]
                        // unless you need it.
                        clipBehavior: Clip.hardEdge,
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              ListTile(
                                leading: const Icon(Icons.palette),
                                trailing: const Icon(Icons.arrow_right),
                                title: Text(localizations.appTheme),
                                onTap: () {
                                  final ThemeMode oldTheme = ref.read(
                                    settingsProvider.select((s) => s.themeMode),
                                  );

                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text(
                                        localizations.selectTheme,
                                      ),
                                      content: Scrollbar(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              const Divider(),
                                              RadioListTile<ThemeMode>(
                                                title: Text(
                                                  localizations.systemTheme,
                                                ),
                                                value: ThemeMode.system,
                                                groupValue: ref.watch(
                                                    settingsProvider.select(
                                                        (s) => s.themeMode)),
                                                onChanged: ref
                                                    .read(settingsProvider)
                                                    .updateThemeMode,
                                              ),
                                              RadioListTile<ThemeMode>(
                                                title: Text(
                                                  localizations.lightTheme,
                                                ),
                                                value: ThemeMode.light,
                                                groupValue: ref.watch(
                                                    settingsProvider.select(
                                                        (s) => s.themeMode)),
                                                onChanged: ref
                                                    .read(settingsProvider)
                                                    .updateThemeMode,
                                              ),
                                              RadioListTile<ThemeMode>(
                                                title: Text(
                                                  localizations.darkTheme,
                                                ),
                                                value: ThemeMode.dark,
                                                groupValue: ref.watch(
                                                  settingsProvider.select(
                                                      (s) => s.themeMode),
                                                ),
                                                onChanged: ref
                                                    .read(settingsProvider)
                                                    .updateThemeMode,
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
                                                ref.read(
                                                  settingsProvider.select(
                                                      (s) => s.themeMode),
                                                )) {
                                              ref
                                                  .read(settingsProvider)
                                                  .updateThemeMode(oldTheme);
                                            }

                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            localizations.cancel,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: Text(
                                            localizations.ok,
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
                                  localizations.appLanguage,
                                ),
                                onTap: () {
                                  final Locale oldLocale = ref.read(
                                    settingsProvider.select((s) => s.locale),
                                  );

                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text(
                                        localizations.selectLanguage,
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
                                                groupValue: ref.watch(
                                                  settingsProvider
                                                      .select((s) => s.locale),
                                                ),
                                                onChanged: ref
                                                    .read(settingsProvider)
                                                    .updateLocale,
                                              ),
                                              RadioListTile<Locale>(
                                                title: const Text(
                                                    'Português 🇧🇷'),
                                                value: const Locale('pt', ''),
                                                groupValue: ref.watch(
                                                  settingsProvider
                                                      .select((s) => s.locale),
                                                ),
                                                onChanged: ref
                                                    .read(settingsProvider)
                                                    .updateLocale,
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
                                                ref.read(
                                                  settingsProvider
                                                      .select((s) => s.locale),
                                                )) {
                                              ref
                                                  .read(settingsProvider)
                                                  .updateLocale(oldLocale);
                                            }

                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            localizations.cancel,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: Text(
                                            localizations.ok,
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
                                  localizations.aboutCurie,
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
