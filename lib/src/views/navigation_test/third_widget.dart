import 'package:flutter/material.dart';

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({Key? key}) : super(key: key);

  static const routeName = 'third';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the third Widget',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
