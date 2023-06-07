// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:smart_bank/common/constants/app_assets.dart';
import 'package:smart_bank/common/styles/app_colors.dart';
import 'package:smart_bank/common/widgets/buttons/icon_button_circle.dart';
import 'package:smart_bank/mobile/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppAppBarNew extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBarNew({
    this.title,
    this.canPop = false,
    this.centerTitle = true,
    this.actions,
    this.color,
    this.backButtonColor,
    this.bottom,
    this.backButtonOnTap,
    this.backButtonLabel,
    this.elevation = .0,
    this.bgBackButtonColor,
  }) : fullscreen = false;

  const AppAppBarNew.fullscreen({
    this.title,
    this.canPop = false,
    this.actions,
    this.color,
    this.backButtonColor,
    this.bottom,
    this.backButtonOnTap,
    this.backButtonLabel,
    this.bgBackButtonColor,
  })  : fullscreen = true,
        centerTitle = true,
        elevation = 0;

  final Widget? title;
  final Color? color;
  final Color? backButtonColor;
  final Color? bgBackButtonColor;
  final bool canPop;
  final bool centerTitle;
  final VoidCallback? backButtonOnTap;
  final String? backButtonLabel;
  final List<Widget>? actions;
  final bool fullscreen;
  final Widget? bottom;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backwardsCompatibility: false,
      backgroundColor: color ?? AppColors.background,
      titleSpacing: 0.0,
      brightness: Brightness.light,
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor:
            fullscreen ? AppColors.transparent : AppColors.background,
        statusBarBrightness:
            color == null ? Brightness.light : Brightness.light,
      ),
      centerTitle: centerTitle,
      elevation: elevation,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            canPop
                ? Row(
                    children: [
                      IconButtonCircle(
                        icon: AppAssets.svg.arrowLeft,
                        iconColor: backButtonColor ?? AppColors.primary400,
                        bgColor: bgBackButtonColor ?? AppColors.transparent,
                        highlightColor: ThemeData().highlightColor,
                        padding: const EdgeInsets.only(right: 5),
                        onTap: backButtonOnTap ??
                            () => AutoRouter.of(context).pop(),
                      ),
                      // TextButton.icon(
                      //   style: TextButton.styleFrom(
                      //     primary: AppColorsNew.brandSec,
                      //   ),
                      //   icon: SvgPicture.asset(
                      //     AppAssets.svgNew.arrowLeft,
                      //     color: backButtonColor ?? AppColorsNew.brand,
                      //   ),
                      //   onPressed: backButtonOnTap ??
                      //       () => AutoRouter.of(context).pop(),
                      //   // label: Text(''),
                      //   label: Text(backButtonLabel ?? '',
                      //       style: AppTextStyles.body1),
                      // ),
                    ],
                  )
                : const SizedBox.shrink(),
            Expanded(
              child: title ?? const SizedBox.shrink(),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          children: actions ?? [],
        ),
      ],
      bottom: bottom == null
          ? null
          : PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: bottom!,
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
