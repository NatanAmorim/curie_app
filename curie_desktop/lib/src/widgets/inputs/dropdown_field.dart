import 'package:flutter/material.dart';

class DropdownField<T> extends StatefulWidget {
  const DropdownField({
    required this.fieldName,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final String fieldName;
  final List<DropdownMenuItem<T>>? items;
  final T selectedValue;
  final void Function(T?)? onChanged;

  @override
  _DropdownFieldState createState() => _DropdownFieldState();
}

class _DropdownFieldState<T> extends State<DropdownField> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      isExpanded: true,
      decoration: InputDecoration(
        filled: true,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
          ),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        errorMaxLines: null,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        labelText: widget.fieldName,
      ),
      value: widget.selectedValue,
      style: Theme.of(context).textTheme.bodyText1,
      onChanged: widget.onChanged,
      items: widget.items as List<DropdownMenuItem<T>>?,
    );
  }
}
