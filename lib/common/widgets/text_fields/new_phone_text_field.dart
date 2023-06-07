import 'package:flutter/material.dart';
import 'package:smart_bank/common/utils/extensions/string.dart';
import 'package:smart_bank/common/widgets/text_fields/new_app_text_field.dart';
import 'package:smart_bank/l10n/generated/l10n.dart';

import '../../../mobile/ui/_styles/app_text_styles.dart';
import 'custom_phone_input_formatter.dart';

class PhoneTextFieldNew extends AppTextFieldNew {
  PhoneTextFieldNew({
    Key? key,
    String? initial,
    Function(String value)? onChanged,
    FocusNode? nextFocus,
    bool autovalidate = false,
    bool enabled = true,
    bool autofocus = false,
    Function(String)? onFieldSubmitted,
    String? hintText,
    String? labelText,
    Widget? prefixIcon,
    TextStyle? style,
    TextStyle? hintStyle,
    EdgeInsetsGeometry? contentPadding,
    Duration? debounce,
    bool isValidatorEnabled = true,
    bool isMaskApplied = true,
    List<String> Function(String?)? validator,
    int? maxLength,
  }) : super(
    key: key,
    initial: initial?.formatAsPhone ?? '+7',
    enabled: enabled,
    autofocus: autofocus,
    labelText: labelText,
    prefixIcon: prefixIcon,
    hintText: hintText ?? '',
    keyboardType: TextInputType.phone,
    inputFormatters: isMaskApplied ? [CustomPhoneInputFormatter()] : null,
    onChanged: onChanged,
    onFieldSubmitted: onFieldSubmitted,
    maxLength: maxLength,
    validator: validator ??
            (value) {
          final output = <String>[];
          if (!isValidatorEnabled) return output;
          if (value == null) return output;
          final phone = value.extractDigits;
          if (phone.isEmpty) {
            output.add(S.current.inputErrorPhoneIsEmpty);
          } else if (phone.length != 11 ||
              phone.substring(0, 2) != '77') {
            output.add(S.current.inputErrorPhone);
          }
          return output;
        },
    nextFocus: nextFocus,
    autovalidate: autovalidate,
    style: style,
    hintStyle: hintStyle,
    contentPadding: contentPadding,
    debounce: debounce,
  );

  factory PhoneTextFieldNew.web({
    Key? key,
    String? initial,
    Function(String value)? onChanged,
    FocusNode? nextFocus,
    String? hintText,
    bool autovalidate = false,
    bool autofocus = false,
    Function(String)? onFieldSubmitted,
    bool enabled = true,
    Duration? debounce,
    bool isValidatorEnabled = true,
    bool isMaskApplied = true,
    EdgeInsetsGeometry? contentPadding,
    List<String> Function(String?)? validator,
    int? maxLength,
  }) {
    return PhoneTextFieldNew(
      key: key,
      initial: initial,
      hintText: hintText,
      onChanged: onChanged,
      nextFocus: nextFocus,
      style: AppTextStyles.button,
      hintStyle: AppTextStyles.button,
      autovalidate: autovalidate,
      onFieldSubmitted: onFieldSubmitted,
      enabled: enabled,
      autofocus: autofocus,
      contentPadding: contentPadding ?? const EdgeInsets.all(20.0),
      debounce: debounce,
      isValidatorEnabled: isValidatorEnabled,
      isMaskApplied: isMaskApplied,
      validator: validator,
      maxLength: maxLength,
    );
  }
}