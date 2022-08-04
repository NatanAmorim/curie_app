import 'package:flutter/material.dart';

class DropdownFieldTooltip extends StatefulWidget {
  const DropdownFieldTooltip({
    required this.fieldName,
    required this.message,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final String fieldName;
  final String message;
  final List<DropdownMenuItem<String>> items;
  final String selectedValue;
  final void Function(String?)? onChanged;

  @override
  _DropdownFieldTooltipState createState() => _DropdownFieldTooltipState();
}

class _DropdownFieldTooltipState extends State<DropdownFieldTooltip> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
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
        suffixIcon: Tooltip(
          message: widget.message,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(8.0),
          ),
          textStyle: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.black),
          padding: const EdgeInsets.all(8),
          child: const Icon(
            Icons.help_outline,
          ),
        ),
      ),
      value: widget.selectedValue,
      style: Theme.of(context).textTheme.bodyText1,
      onChanged: widget.onChanged,
      items: widget.items,
    );
  }
}
