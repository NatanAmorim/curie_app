import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.fieldName,
    required this.validator,
    this.minLines = 1,
    this.maxLines = 30,
    this.isObscure = false,
    this.isEnabled = true,
    this.textInputAction,
    this.inputFormatters,
    required this.onChanged,
  }) : super(key: key);

  final TextEditingController controller;
  final String fieldName;
  final FormFieldValidator<String>? validator;
  final int minLines;
  final int maxLines;
  final bool isObscure;
  final bool isEnabled;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.isEnabled,
      textInputAction: widget.textInputAction ?? TextInputAction.newline,
      minLines: widget.isObscure ? 1 : widget.minLines,
      maxLines: widget.isObscure ? 1 : widget.maxLines,
      obscureText: widget.isObscure,
      controller: widget.controller,
      inputFormatters: widget.inputFormatters,
      validator: widget.validator,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        filled: true,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
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
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        // hintText: "${widget.fieldName}", // FIX
        labelText: widget.fieldName,
      ),
    );
  }
}
