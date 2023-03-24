import 'package:curie/main.dart';
import 'package:curie/src/constants/themes.dart';
import 'package:curie/src/router.dart';
import 'package:curie/src/views/error/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The Widget that configures your application.
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // When an error occurs during the build phase, the ErrorWidget.builder
    // callback is invoked to build the widget that is used instead of the one
    // that failed.
    // By default, in debug mode this shows an error message in red,
    // and in release mode this shows a gray background.
    // This is replacing the default errorWidget with a more user-friendly one.
    ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
      return ErrorView(
        errorDetails: errorDetails,
      );
    };

    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: ref.watch(settingsProvider),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: ref.watch(settingsProvider.select((s) => s.locale)),

          supportedLocales: const [
            Locale('en', ''), // English, no country code
            Locale('pt', ''), // Portuguese, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ref.watch(settingsProvider.select((s) => s.themeMode)),

          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',
        );
      },
    );
  }
}
