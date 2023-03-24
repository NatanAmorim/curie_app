// Define a function to handle named routes in order to support
// Flutter web url navigation and deep linking.
import 'package:curie/src/views/error/error_view.dart';
import 'package:curie/src/views/navigation_test/first_widget.dart';
import 'package:curie/src/views/navigation_test/navigation_test_view.dart';
import 'package:curie/src/views/navigation_test/second_widget.dart';
import 'package:curie/src/views/navigation_test/third_widget.dart';
import 'package:curie/src/views/route_test/route_test_view.dart';
import 'package:curie/src/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    ShellRoute(
      // builder: (context, state, child) {
      //   return child;
      // },
      routes: <RouteBase>[
        GoRoute(
          path: FirstWidget.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return const FirstWidget();
          },
        ),
        GoRoute(
          path: SecondWidget.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return const FirstWidget();
          },
        ),
        GoRoute(
          path: ThirdWidget.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return const FirstWidget();
          },
        ),
      ],
    ),
    GoRoute(
      path: NavigationTestView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const NavigationTestView();
      },
    ),
    GoRoute(
      path: SettingsView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const SettingsView();
      },
    ),
    GoRoute(
      path: RouteTestView.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const RouteTestView();
      },
    ),
  ],
  errorBuilder: (context, state) => ErrorView(
    error: state.error,
  ),
);
