import 'package:flutter/material.dart';
import 'package:smart_bank/common/styles/app_colors.dart';
import 'package:smart_bank/common/widgets/one_or_another.dart';
import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';


import '../base_button.dart';

class AppOutlinedButton extends StatelessWidget implements BaseButton {
  AppOutlinedButton({Key? key,
    this.label,
    required this.onPressed,
    this.margin,
    this.style = AppTextStyles.button,
    this.isExpanding = false,
    this.borderColor = AppColors.blackSec,
    EdgeInsetsGeometry? padding,
    this.icon,
  }) : padding = padding ??
            EdgeInsets.symmetric(
              vertical: 19.0,
              horizontal: isExpanding ? 10.0 : 18.0,
            ), super(key: key);

  AppOutlinedButton.web({
    this.label,
    required this.onPressed,
    this.margin,
    this.style = AppTextStyles.button,
    this.isExpanding = false,
    this.borderColor = AppColors.blackSec,
    this.icon,
  }) : padding = EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: isExpanding ? 10.0 : 60.0,
        );

  const AppOutlinedButton.webBig({
    this.label,
    required this.onPressed,
    this.borderColor = AppColors.blackSec,
    this.margin,
    this.style = AppTextStyles.button,
    this.padding = const EdgeInsets.symmetric(
      vertical: 16.0,
      horizontal: 30.0,
    ),
    this.isExpanding = false,
    this.icon,
  });
  AppOutlinedButton.webSmall({
    this.label,
    required this.onPressed,
    this.borderColor = AppColors.blackSec,
    this.margin,
    TextStyle? style,
    this.padding = const EdgeInsets.symmetric(
      vertical: 8.0,
      horizontal: 16.0,
    ),
    this.isExpanding = false,
    this.icon,
  }) : style = style ?? AppTextStyles.body1.copyWith(fontSize: 13.0);

  @override
  final String? label;

  @override
  final EdgeInsetsGeometry? margin;

  final Color borderColor;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final TextStyle? style;
  final bool isExpanding;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final _text = Text(
      label ?? '',
      textAlign: TextAlign.center,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: style,
    );

    final _child = Container(
      margin: margin,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
          minimumSize: Size.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          side: BorderSide(
            color: onPressed == null ? AppColors.gray : borderColor,
            width: 2.0,
          ),
          foregroundColor:
              onPressed == null ? AppColors.gray : AppColors.blackSec,
        ),
        child: Container(
          padding: padding,
          child: Row(
            children: [
              if (icon != null) icon!,
              if (icon != null && label != null) const SizedBox(width: 8.0),
              if (label != null)
                OneOrAnother(
                  showAnother: isExpanding,
                  childOne: _text,
                  childAnother: Expanded(
                    child: _text,
                  ),
                ),
            ],
          ),
        ),
        onPressed: onPressed,
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OneOrAnother(
          showAnother: isExpanding,
          childOne: _child,
          childAnother: Expanded(
            child: _child,
          ),
        ),
      ],
    );
  }
}
