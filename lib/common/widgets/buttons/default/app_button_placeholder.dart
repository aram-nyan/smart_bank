import 'package:flutter/material.dart';
import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';

import '../base_button.dart';

class AppButtonPlaceholder extends StatelessWidget implements BaseButton {
  const AppButtonPlaceholder({
    required this.label,
    this.margin,
  });
  @override
  final String label;

  @override
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          child: Text(
            label,
            style: AppTextStyles.button.copyWith(color: Colors.transparent),
          ),
        ),
        onPressed: null,
      ),
    );
  }
}
