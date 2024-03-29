import 'package:curie/src/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

AppBar appBarTemplate({
  required BuildContext context,
  required String title,
  Widget? leading,
}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w400,
      ),
    ),
    leading: leading,
    actions: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.settings,
        ),
        tooltip: AppLocalizations.of(context)!.settings,
        onPressed: () {
          // Navigate to the settings page. If the user leaves and returns
          // to the app after it has been killed while running in the
          // background, the navigation stack is restored.
          // Navigator.restorablePushNamed(context, SettingsView.routeName); // TODO remove line after using go_router
          context.push(SettingsView.routeName);
        },
      ),
    ],
  );
}
