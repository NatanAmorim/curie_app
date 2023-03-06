import 'package:flutter/material.dart';

class CountFieldTemplate extends StatefulWidget {
  const CountFieldTemplate({
    Key? key,
    required this.value,
    required this.addFunction,
    required this.subtractFunction,
  }) : super(key: key);

  final int value;
  final VoidCallback addFunction;
  final VoidCallback subtractFunction;

  @override
  State<CountFieldTemplate> createState() => _CountFieldTemplateState();
}

class _CountFieldTemplateState extends State<CountFieldTemplate> {
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
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
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
