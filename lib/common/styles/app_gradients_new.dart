import 'package:flutter/material.dart';

class AppGradientsNew {
  static const tutorial = _HelpGradient();
}

class _HelpGradient {
  const _HelpGradient();
  static const _beginPink = Color(0xFFC84E89);
  static const _endPink = Color(0xFFF15F79);
  static const _beginBlue = Color(0xFF0052D4);
  static const _centerBlue = Color(0xFF4364F7);
  static const _endBlue = Color(0xFF6FB1FC);

  final pinkGradient = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: <Color>[_beginPink, _endPink]);

  final blueGradient = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: <Color>[_beginBlue, _centerBlue, _endBlue]);
}
