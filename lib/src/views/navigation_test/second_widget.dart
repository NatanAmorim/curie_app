import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({Key? key}) : super(key: key);

  static const routeName = 'second';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the second Widget',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
