import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchTextFieldWidget extends StatefulWidget {
  const SearchTextFieldWidget({
    required this.controller,
    required this.onPressed,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final VoidCallback onPressed;
  final ValueChanged<String> onChanged;

  @override
  State<SearchTextFieldWidget> createState() => _SearchTextFieldWidgetState();
}

class _SearchTextFieldWidgetState extends State<SearchTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 300,
        maxWidth: 600,
      ),
      child: TextField(
        controller: widget.controller,
        inputFormatters: [SearchTextFormatter()],
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
            message: 'Clean search',
            child: IconButton(
              icon: Icon(Icons.cancel, color: Colors.grey[600]),
              onPressed: widget.onPressed,
            ),
          ),
        ),
        maxLength: 30,
        onChanged: widget.onChanged,
      ),
    );
  }
}

class SearchTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // this part remove double whitespaces
    if (newValue.text.endsWith('  ')) {
      return TextEditingValue(
        text: newValue.text.replaceFirst('  ', ' '),
        selection: TextSelection.collapsed(offset: newValue.text.length - 1),
      );
    }

    return newValue;
  }
}
