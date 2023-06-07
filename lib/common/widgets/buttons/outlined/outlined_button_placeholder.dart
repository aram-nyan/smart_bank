import 'package:flutter/material.dart';
import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';

import '../base_button.dart';

class AppOutlinedButtonPlaceholder extends StatelessWidget implements BaseButton {
  const AppOutlinedButtonPlaceholder({
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
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          side: const BorderSide(width: 2, color: Colors.transparent),
        ),
        child: Container(
          padding: const EdgeInsets.all(18.0),
          alignment: Alignment.center,
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
