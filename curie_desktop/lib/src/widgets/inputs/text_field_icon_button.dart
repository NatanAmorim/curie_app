import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldIconButtonWidget extends StatefulWidget {
  const TextFieldIconButtonWidget({
    Key? key,
    required this.controller,
    required this.fieldName,
    required this.validator,
    required this.onPressed,
    required this.icon,
    this.minLines = 1,
    this.maxLines = 30,
    this.isObscure = false,
    this.textInputAction,
    this.inputFormatters = null,
    required this.onChanged,
  }) : super(key: key);

  final TextEditingController controller;
  final dynamic fieldName;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onPressed;
  final Icon icon;
  final bool isObscure;
  final int minLines;
  final int maxLines;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;

  @override
  _TextFieldIconButtonWidgetState createState() =>
      _TextFieldIconButtonWidgetState();
}

class _TextFieldIconButtonWidgetState extends State<TextFieldIconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        suffixIcon: IconButton(
          icon: widget.icon,
          onPressed: widget.onPressed,
        ),
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
        errorMaxLines: null,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        labelText: '${widget.fieldName}',
      ),
    );
  }
}
