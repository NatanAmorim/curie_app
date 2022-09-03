import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldTemplate extends StatelessWidget {
  const TextFormFieldTemplate({
    required this.label,
    this.initialValue,
    this.controller,
    this.validator,
    this.onTap,
    this.onSaved,
    this.isObscureText = false,
    this.textInputAction,
    this.inputFormatters,
    this.onEditingComplete,
    Key? key,
  }) : super(key: key);

  final String label;
  final String? initialValue;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function()? onTap;
  final bool isObscureText;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onEditingComplete: onEditingComplete,
      onTap: onTap,
      onSaved: onSaved,
      obscureText: isObscureText,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction ?? TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: initialValue,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        labelText: label,
      ),
    );
  }
}
