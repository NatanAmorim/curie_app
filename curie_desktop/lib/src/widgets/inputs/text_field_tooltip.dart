import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TooltipTextFieldWidget extends StatefulWidget {
  const TooltipTextFieldWidget({
    Key? key,
    required this.controller,
    required this.fieldName,
    required this.validator,
    required this.message,
    this.isObscure = false,
    this.minLines = 1,
    this.maxLines = 30,
    this.textInputAction,
    this.inputFormatters,
    required this.onChanged,
  }) : super(key: key);

  final TextEditingController controller;
  final String fieldName;
  final FormFieldValidator<String>? validator;
  final String message;
  final bool isObscure;
  final int minLines;
  final int maxLines;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;

  @override
  _TooltipTextFieldWidgetState createState() => _TooltipTextFieldWidgetState();
}

class _TooltipTextFieldWidgetState extends State<TooltipTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: widget.textInputAction ?? TextInputAction.next,
      minLines: widget.isObscure ? 1 : widget.minLines,
      maxLines: widget.isObscure ? 1 : widget.maxLines,
      obscureText: widget.isObscure,
      controller: widget.controller,
      inputFormatters: widget.inputFormatters,
      validator: widget.validator,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
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
          color: Colors.grey,
        ),
        // hintText: "${widget.fieldName}", // FIX
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
    );
  }
}
