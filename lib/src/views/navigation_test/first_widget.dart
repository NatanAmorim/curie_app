import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({Key? key}) : super(key: key);

  static const routeName = 'first';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the first Widget',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
