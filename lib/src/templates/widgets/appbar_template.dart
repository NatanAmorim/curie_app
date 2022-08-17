import 'package:curie/src/views/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

AppBar appBarTemplate({
  required BuildContext context,
  required String title,
}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {
          // Navigator.pushNamed(
          //   context,
          //   NotificacoesScreen.routeName,
          // );
        },
        icon: const Icon(Icons.notifications),
        tooltip: 'Notificações',
      ),
      IconButton(
        icon: const Icon(Icons.settings),
        tooltip: AppLocalizations.of(context)!.settings,
        onPressed: () {
          // Navigate to the settings page. If the user leaves and returns
          // to the app after it has been killed while running in the
          // background, the navigation stack is restored.
          Navigator.restorablePushNamed(context, SettingsScreen.routeName);
        },
      ),
    ],
  );
}
