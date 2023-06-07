import 'package:flutter/material.dart';
import 'package:smart_bank/common/widgets/one_or_another.dart';
import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';

import '../base_button.dart';

class AppTextButtonPlaceholder extends StatelessWidget implements BaseButton {
  const AppTextButtonPlaceholder({
    required this.label,
    this.margin,
    this.isExpanding = false,
    this.padding,
    this.style = AppTextStyles.button,
  });
  @override
  final String label;
  @override
  final EdgeInsetsGeometry? margin;
  final bool isExpanding;
  final EdgeInsetsGeometry? padding;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
          minimumSize: Size.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
        ),
        child: OneOrAnother(
          showAnother: isExpanding,
          childOne: Container(
            alignment: Alignment.center,
            padding: padding,
            child: Text(
              label,
              style: style.copyWith(color: Colors.transparent),
            ),
          ),
          childAnother: Container(
            padding: padding,
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  label,
                  style: style.copyWith(color: Colors.transparent),
                  textAlign: TextAlign.center,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                )),
              ],
            ),
          ),
        ),
        onPressed: null,
      ),
    );
  }
}
