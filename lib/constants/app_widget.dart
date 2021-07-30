import 'package:curie/views/welcome_page.dart';
import 'package:flutter/material.dart';

import 'app_themes.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Curie",
      theme: darkTheme, //TODO: SWICH between light and dark theme
      home: WelcomePage(),
    );
  }
}
