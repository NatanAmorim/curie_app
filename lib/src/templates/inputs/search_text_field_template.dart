import 'package:flutter/material.dart';

class SearchTextFieldTemplate extends StatefulWidget {
  const SearchTextFieldTemplate({
    required this.controller,
    required this.onPressed,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final VoidCallback onPressed;
  final ValueChanged<String> onChanged;

  @override
  _SearchTextFieldTemplateState createState() =>
      _SearchTextFieldTemplateState();
}

class _SearchTextFieldTemplateState extends State<SearchTextFieldTemplate> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 100,
        maxWidth: 350,
      ),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          hintText: 'Type to search',
          counterText: '',
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).hintColor,
          ),
          suffixIcon: Tooltip(
            message: 'Clear Text',
            child: IconButton(
              icon: Icon(Icons.cancel, color: Colors.grey[600]),
              onPressed: widget.onPressed,
            ),
          ),
        ),
        maxLength: 20,
        onChanged: widget.onChanged,
      ),
    );
  }
}
