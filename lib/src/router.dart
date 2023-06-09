// Define a function to handle named routes in order to support
// Flutter web url navigation and deep linking.
import 'package:curie/src/views/error/error_view.dart';
import 'package:curie/src/views/navigation_test/navigation_test_view.dart';
import 'package:curie/src/views/route_test/route_test_view.dart';
import 'package:curie/src/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: '/',
  // a Route is a destination in the app that supports deep linking
  routes: <RouteBase>[
    GoRoute(
      path: NavigationTestView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return NavigationTestView(
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: SettingsView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return SettingsView(
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: RouteTestView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return RouteTestView(
          key: state.pageKey,
        );
      },
    ),
  ],
  // This page will be called when no match is found or multiple are found.
  // This page can also be called if a match is found but any of the pages
  // builders throws an exception, the exception will be caught and handed to
  // the errorPageBuilder so that you can show the error message.
  errorBuilder: (context, state) => ErrorView(
    key: state.pageKey,
    error: state.error,
  ),
);
