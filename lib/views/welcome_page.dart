import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Center(
          child: Text(
            'Welcome to Curie Desktop!',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      )),
    );
  }
}
