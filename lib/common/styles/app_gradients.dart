import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppGradients {
  static const defaultButton = _DefaultButton();
}

class _DefaultButton {
  const _DefaultButton();
  static const _begin = Color(0xFF757575);
  static const _end = Colors.grey;

  // final enabled = LinearGradient(
  //   begin: Alignment.topCenter,
  //   end: Alignment.bottomCenter,
  //   colors: <Color>[AppColors.darkOrange, AppColors.lightOrange],
  // );

  final disabled = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[_begin, _end],
  );
}
