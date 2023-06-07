import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

final mainTheme = ThemeData(
  fontFamily: 'Inter',
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: AppColors.primary400),
  ),
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: AppColors.transparent),
  highlightColor: AppColors.neutral400,
  // highlightColor: AppColorsNew.brandSec,
  splashColor: AppColors.neutral50,
  scaffoldBackgroundColor: AppColors.neutral50,
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.label,
  ),
  // snackBarTheme: SnackBarThemeData(
  //   backgroundColor: AppColors.success,
  //   actionTextColor: AppColors.white,
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(8),
  //   ),
  //   behavior: SnackBarBehavior.floating,
  //   elevation: 1.0,
  // ),
  canvasColor: AppColors.neutral50,
  backgroundColor: AppColors.neutral50,
  dividerTheme: const DividerThemeData(space: 0, color: AppColors.neutral500),
  textTheme: const TextTheme(
    bodyText1: AppTextStyles.body1,
  ),
);
