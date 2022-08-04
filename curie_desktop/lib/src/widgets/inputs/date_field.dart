import 'package:flutter/material.dart';

class DateField extends StatefulWidget {
  const DateField({
    Key? key,
    required this.fieldName,
    required this.onChanged,
    required this.controller,
  }) : super(key: key);

  final String fieldName;
  final TextEditingController controller;
  final VoidCallback onChanged;

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 205,
      child: TextFormField(
        readOnly: true,
        controller: widget.controller,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.calendar_month),
            onPressed: widget.onChanged,
          ),
          filled: true,
          focusedBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          errorMaxLines: null,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          labelText: widget.fieldName,
        ),
      ),
    );
  }
}
