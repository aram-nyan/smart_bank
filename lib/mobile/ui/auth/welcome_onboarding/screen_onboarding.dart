import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smart_bank/common/constants/app_assets.dart';
import 'package:smart_bank/common/styles/app_colors.dart';
import 'package:smart_bank/common/widgets/buttons/default/app_button.dart';
import 'package:smart_bank/mobile/routes/routes.gr.dart';
import 'package:smart_bank/mobile/ui/_styles/app_text_styles.dart';

class ScreenWelcomeOnboarding extends StatelessWidget {
  const ScreenWelcomeOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24),
                  Text('Welcome to SmartBank', style: AppTextStyles.footNote1),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(child: Text('Managing your \nmoney has never been \nso easy.', style: AppTextStyles.h1,)),
                    ],
                  ),
                  SizedBox(height: 34),
                  Image.asset(AppAssets.images.welcomeImage),
                  SizedBox(height: 44),
                ],
              ),
              Column(
                children: [
                  AppButton(
                    label: 'Sign up',
                    isExpanding: true,
                    onPressed: () {
                      context.router.navigate(ScreenPhoneRoute());
                    },
                  ),
                  SizedBox(height: 18),
                  AppButton(
                    label: 'Log in',
                    isExpanding: true,
                    color: AppColors.neutral200,
                    labelStyle: AppTextStyles.button.copyWith(color: AppColors.primary600),
                    onPressed: () {
                      context.router.navigate(ScreenLoginRoute());
                    },
                  ),
                  SizedBox(height: 48),
                ],
              ),

            ],
          ),
        ));
  }
}
