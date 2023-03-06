import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldTemplate extends StatefulWidget {
  const TextFormFieldTemplate({
    Key? key,
    required this.controller,
    required this.labelText,
    this.placeholderText,
    this.helperText,
    required this.validator,
    this.prefix,
    this.prefixIcon,
    this.prefixText,
    this.suffix,
    this.suffixIcon,
    this.suffixText,
    this.minLines = 1,
    this.maxLines = 5,
    this.isObscure = false,
    this.isEnabled = true,
    this.textInputAction,
    this.inputFormatters,
    required this.onChanged,
  }) : super(key: key);

  final String labelText;
  final String? placeholderText;
  final String? helperText;
  final Widget? prefix;
  final Widget? prefixIcon;
  final String? prefixText;
  final Widget? suffix;
  final Widget? suffixIcon;
  final String? suffixText;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final int minLines;
  final int maxLines;
  final bool isObscure;
  final bool isEnabled;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;

  @override
  State<TextFormFieldTemplate> createState() => _TextFormFieldTemplateState();
}

class _TextFormFieldTemplateState extends State<TextFormFieldTemplate> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        helperText: widget.helperText,
        hintText: widget.placeholderText,
        alignLabelWithHint: true,
        filled: true,
        prefix: widget.prefix,
        prefixIcon: widget.prefixIcon,
        prefixText: widget.prefixText,
        suffix: widget.suffix,
        suffixIcon: widget.suffixIcon,
        suffixText: widget.suffixText,
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
      ),
      enabled: widget.isEnabled,
      textInputAction: widget.textInputAction ?? TextInputAction.newline,
      minLines: widget.isObscure ? 1 : widget.minLines,
      maxLines: widget.isObscure ? 1 : widget.maxLines,
      obscureText: widget.isObscure,
      controller: widget.controller,
      inputFormatters: widget.inputFormatters,
      validator: widget.validator,
      onChanged: widget.onChanged,
    );
  }
}
