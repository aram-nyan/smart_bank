import 'package:flutter/material.dart';
import 'package:smart_bank/common/styles/app_colors.dart';
import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';

class AppTextButtonNew extends StatelessWidget {
  const AppTextButtonNew(
      {Key? key,
      this.onPressed,
      this.label,
      this.labelStyle,
      this.margin,
      this.primaryColor})
      : super(key: key);
  final VoidCallback? onPressed;
  final String? label;
  final TextStyle? labelStyle;
  final Color? primaryColor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor ?? AppColors.primary500,
        ),
        child: Text(
          label ?? '',
          style: labelStyle ?? AppTextStyles.button,
        ),
        onPressed: onPressed ??
            () {
              Navigator.of(context).pop();
            },
      ),
    );
  }
}
