# Changelog

All notable changes in this project will be documented in this file.

## Curie v2023.5.23-Pre-Alpha

- Added minimum window size plugin.
- Added warning about ChangeNotifierProviders and using something else.

## Curie v2023.4.6-Pre-Alpha

- Added 'WidgetsFlutterBinding.ensureInitialized();' needed in SettingsService.
- Added localizations to error page.
- Fixed navigation rail size while keeping scrollable (tested on Mac only).
- Update all Riverpod pkgs version.

## Curie v2023.4.5-Pre-Alpha

- Fixed route error.

## Curie v2023.3.24-Pre-Alpha

- Added Dio package and started implementing.
- Added FlutterSecureStorage package (not using yet).
- Started implementing GoRouter.
- Now using Fade Animation in the Stack controlled by navigation rail.
- Added ErrorView, a view to display errors to the user with UI.

## Curie v2023.3.6+1-Pre-Alpha

- Added Riverpod package.
- Added Frezed package (not using yet).
- Added GoRouter package (not using yet).
- Added Animations package (not using yet).
- Added data_table_2 package (not using yet).
- Settings now uses Riverpod state management and depency injection in their logic.
- Fixed typo in `analysis_options.yaml`.
- Added internet permission in `AndroidManifest.xml` to get the Dart VM debug http connection to work.
- Updated deprecated textTheme.
- Removed`generic_functions.dart`.
- Created a custom ErrorWidget.builder.
- Everything is now using the new versioning system.

## Curie v2022.8.22+1-Pre-Alpha

- Updated theme.

## Curie v2022.8.19+1-Pre-Alpha

- Custom themes are now being used.
- Some minor improvements in the SettingsScreen.
- Added side panel activated with FAB to use for "SortBy" & "FilterBy".

## Curie v2022.8.18+1-Pre-Alpha

- SettingsScreen it's finished and now works like intended.

## Curie v2022.8.17+2-Pre-Alpha

- Fixed warnings about @imutable in MyApp.
- Fixed warnings about Incorrect use of ParentDataWidget in cardTemplate.
- Removed back button in the initial screen, using a home widget in the view.

## Curie v2022.8.17+1-Pre-Alpha

- The settingsPageView now supports differents languagues.
- Created a template for a Material Card with max width of 990.
- Removed "sample_feature" from skeleton example.
- Routes are now working on a separated file "routes.dart".

## Curie v2022.8.16+2-Pre-Alpha

- Testing with different ways of setting user app preferences.

## Curie v2022.8.16+1-Pre-Alpha

- Implemented ThemeMode (dark theme and light theme).
- Implemented Locale ('en' and 'pt' support).
- App preferences are now stored in local storage.
- Started development of the app.

## Curie v2021.12.15+1-Pre-Alpha

- initial Config
