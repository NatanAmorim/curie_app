import 'package:flutter/material.dart';

class ElevatedButtonTemplate extends StatefulWidget {
  const ElevatedButtonTemplate({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final Future<bool> Function() onPressed;

  @override
  State<ElevatedButtonTemplate> createState() => _ElevatedButtonTemplateState();
}

class _ElevatedButtonTemplateState extends State<ElevatedButtonTemplate> {
  final double contentSize = 18;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(TextStyle(fontSize: contentSize)),
        padding: MaterialStateProperty.all(const EdgeInsets.all(25.0)),
      ),
      label: Text('  ${widget.label}'),
      icon: _isLoading
          ? SizedBox(
              width: contentSize,
              height: contentSize,
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            )
          : Icon(
              widget.icon,
              size: contentSize,
            ),
      onPressed: _isLoading
          ? null
          : () async {
              if (_isLoading) return;

              setState(() => _isLoading = true);

              final bool isSuccessful = await widget.onPressed();

              if (isSuccessful) return;

              setState(() => _isLoading = false);
            },
    );
  }
}
