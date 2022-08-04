import 'package:flutter/material.dart';

class CountField extends StatefulWidget {
  const CountField({
    Key? key,
    required this.value,
    required this.addFunction,
    required this.subtractFunction,
  }) : super(key: key);

  final int value;
  final VoidCallback addFunction;
  final VoidCallback subtractFunction;

  @override
  State<CountField> createState() => _CountFieldState();
}

class _CountFieldState extends State<CountField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: widget.subtractFunction,
            icon: const Icon(
              Icons.remove,
              color: Colors.grey,
            )),
        Text(
          widget.value.toString(),
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.orangeAccent,
              ),
        ),
        IconButton(
            onPressed: widget.addFunction,
            icon: const Icon(
              Icons.add,
              color: Colors.grey,
            )),
      ],
    );
  }
}
