import 'package:flutter/material.dart';
import 'package:smart_bank/common/styles/app_colors.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator([this.value]) : isCircular = true;
  const AppLoadingIndicator.linear([this.value]) : isCircular = false;
  final bool isCircular;
  final double? value;

  @override
  Widget build(BuildContext context) {
    return isCircular
        ? Center(
            child: CircularProgressIndicator.adaptive(
              value: value,
              valueColor: const AlwaysStoppedAnimation(
                  AppColors.primary800,
              ),
            ),
          )
        : LinearProgressIndicator(
            minHeight: 2.0,
            value: value,
            backgroundColor: AppColors.white,
            valueColor: const AlwaysStoppedAnimation(
              AppColors.primary800,
            ),
          );
  }
}
