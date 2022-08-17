import 'package:flutter/material.dart';

Widget cardTemplate({
  required Widget child,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 2.0),
    child: ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 990,
      ),
      child: Flexible(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 8.0,
            ),
            child: child,
          ),
        ),
      ),
    ),
  );
}
