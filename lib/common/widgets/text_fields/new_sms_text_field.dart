import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../mobile/ui/_styles/app_text_styles.dart';
import '../../styles/app_colors.dart';

class SmsPinFields extends StatefulWidget {

  const SmsPinFields({Key? key, this.smsCode, this.onComplete}) : super(key: key);

  final String? smsCode;
  final Function(String)? onComplete;



  @override
  State<SmsPinFields> createState() => _SmsPinFieldsState();
}

class _SmsPinFieldsState extends State<SmsPinFields> {

  late final pinController = TextEditingController(text: widget.smsCode);


  static final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: AppTextStyles.body2,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.graySec),
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8),
    ),
  );

  final focusedPinTheme = defaultPinTheme.copyBorderWith(
    border: Border.all(color: AppColors.primary400),
  );

  final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: AppColors.white,
      borderRadius: defaultPinTheme.decoration?.borderRadius,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Pinput(
      autofocus: true,
      preFilledWidget: Text('-', style: AppTextStyles.body2.copyWith(color: AppColors.gray),),
      cursor: Text('-', style: AppTextStyles.body2.copyWith(color: AppColors.gray),),
      animationDuration: const Duration(microseconds: 100),
      animationCurve: Curves.easeInExpo,
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      controller: pinController,
      onCompleted: widget.onComplete,
    );
  }
}
