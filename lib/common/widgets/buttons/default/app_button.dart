import 'package:flutter/material.dart';
import 'package:smart_bank/common/styles/app_colors.dart';
import 'package:smart_bank/common/widgets/buttons/base_button.dart';
import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';
import 'package:smart_bank/common/widgets/one_or_another.dart';
import 'package:smart_bank/common/widgets/skeleton/skeleton_loader.dart';

class AppButton extends StatefulWidget implements BaseButton {
  AppButton({
    required this.label,
    required this.onPressed,
    this.margin,
    this.labelStyle = AppTextStyles.button,
    EdgeInsetsGeometry? padding,
    this.isExpanding = false,
    this.isEnabled = true,
    this.isLoading = false,
    this.color,
  }) : padding = padding ??
            EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: isExpanding ? 10.0 : 18.0,
            );

  @override
  final String label;
  final VoidCallback? onPressed;
  @override
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final TextStyle? labelStyle;
  final bool isExpanding;
  final bool isEnabled;
  final bool isLoading;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    final _child = TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        minimumSize: Size.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: widget.isEnabled ? widget.onPressed : () {},
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: widget.color ??
              (widget.isEnabled ? AppColors.primary40 : AppColors.gray),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: widget.padding,
          child: widget.isLoading
              ? SkeletonLoader(
              highlightColor: AppColors.primary400,
              baseColor: AppColors.white,
              period: const Duration(seconds: 1),
                  builder: Text(
                  widget.label,
                  style: widget.labelStyle,
                  textAlign: TextAlign.center,
                  softWrap: !widget.isExpanding,
                  overflow: TextOverflow.fade,
                ))
              : Text(
                  widget.label,
                  style: widget.labelStyle,
                  textAlign: TextAlign.center,
                  softWrap: !widget.isExpanding,
                  overflow: TextOverflow.fade,
                ),
        ),
      ),
    );
    return Container(
      margin: widget.margin,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          OneOrAnother(
            showAnother: widget.isExpanding,
            childOne: _child,
            childAnother: Expanded(
              child: _child,
            ),
          ),
        ],
      ),
    );
  }
}
