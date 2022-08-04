import 'dart:async';

import 'package:flutter/material.dart';

class Debounce {
  Debounce({
    required this.milliseconds,
  });
  final int milliseconds;
  Timer? _timer;

  void run(VoidCallback voidCallback) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), voidCallback);
  }

  void dispose() => _timer?.cancel();
}
