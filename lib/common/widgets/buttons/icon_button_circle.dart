import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_bank/common/styles/app_colors.dart';


class IconButtonCircle extends StatelessWidget {
  const IconButtonCircle({
    Key? key,
    this.onTap,
    this.icon,
    this.iconColor, this.padding,this.bgColor,this.highlightColor, this.inkPadding,
  }) : super(key: key);
  final VoidCallback? onTap;
  final String? icon;
  final Color? iconColor;
  final Color? bgColor;
  final Color? highlightColor;
  final EdgeInsets? padding;
  final EdgeInsets? inkPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(right: 0),
      child: InkWell(
        highlightColor: highlightColor ??  ThemeData().highlightColor,
        splashColor: AppColors.white,
        borderRadius: BorderRadius.circular(50),
        onTap: onTap,
        child: Ink(
          padding: inkPadding ?? const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: bgColor ?? AppColors.white),
          child: CircleAvatar(
              maxRadius: 12,
              backgroundColor: AppColors.transparent,
              child: SvgPicture.asset(icon ?? '', color: iconColor?? AppColors.primary400,)),
        ),
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(50), color: bgColor ?? AppColorsNew.white),
      ),
    );
  }
}
