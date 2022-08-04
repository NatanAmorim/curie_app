import 'package:flutter/material.dart';

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
  _SearchTextFieldWidgetState createState() => _SearchTextFieldWidgetState();
}

class _SearchTextFieldWidgetState extends State<SearchTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          hintText: 'Escreva para pesquisar',
          counterText: '',
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).hintColor,
          ),
          suffixIcon: Tooltip(
            message: 'Limpar Pesquisa',
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
