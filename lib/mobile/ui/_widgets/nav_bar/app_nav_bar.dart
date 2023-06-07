import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_bank/common/constants/app_assets.dart';
import 'package:smart_bank/common/styles/app_colors.dart';
import 'package:smart_bank/l10n/generated/l10n.dart';
import 'package:smart_bank/mobile/routes/routes.dart';
import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';
import 'widgets/app_nav_bar_item.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({Key? key, required this.current}) : super(key: key);

  final NavBarItem current;

  @override
  Widget build(BuildContext context) {
    List<AppNavBarItem> items = [];
    items = [
      /// Home page
      AppNavBarItem(
          label: S.of(context).home,
          type: NavBarItem.home,
          activeIcon: SvgPicture.asset(
            AppAssets.svg.home,
            color: AppColors.primary500,
          ),
          icon: SvgPicture.asset(
            AppAssets.svg.home,
            color: AppColors.graySec,
          ),
          onTap: () async {}),

      /// Transactions page
      AppNavBarItem(
          label: S.of(context).transactions,
          type: NavBarItem.transactions,
          activeIcon: SvgPicture.asset(
            AppAssets.svg.transactions,
            color: AppColors.primary500,
          ),
          icon: SvgPicture.asset(
            AppAssets.svg.transactions,
            color: AppColors.graySec,
          ),
          onTap: () async {}),

      /// Cards page
      AppNavBarItem(
          label: S.of(context).cards,
          type: NavBarItem.cards,
          activeIcon: SvgPicture.asset(
            AppAssets.svg.cards,
            color: AppColors.primary500,
          ),
          icon: SvgPicture.asset(
            AppAssets.svg.cards,
            color: AppColors.graySec,
          ),
          onTap: () async {}),
    ];
    return ColoredBox(
      color: AppColors.white,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
        ),
        child: Container(
          padding: const EdgeInsets.only(
            top: 15.0,
            bottom: 15.0,
          ),
          child: BottomNavigationBar(
            elevation: 0.0,
            enableFeedback: true,
            currentIndex: items.indexWhere((item) => item.type == current),
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.white,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            selectedItemColor: AppColors.primary500,
            unselectedItemColor: AppColors.graySec,
            selectedLabelStyle: AppTextStyles.overLine,
            unselectedLabelStyle:
                AppTextStyles.overLine.copyWith(color: AppColors.graySec),
            items: items,
            onTap: (index) => items[index].onTap?.call(),
          ),
        ),
      ),
    );
  }
}

enum NavBarItem {
  home,
  cards,
  transactions,
}
