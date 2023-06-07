import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_bank/common/widgets/text_fields/new_app_text_field.dart';
import 'package:smart_bank/l10n/generated/l10n.dart';

class PasswordTextFieldNew extends AppTextFieldNew {
  PasswordTextFieldNew({
    Key? key,
    String? hintText,
    TextStyle? hintStyle,
    String? labelText,
    Widget? prefixIcon,
    Function(String value)? onChanged,
    List<String> Function(String?)? validator,
    Function(String)? onFieldSubmitted,
    FocusNode? nextFocus,
    bool autovalidate = false,
    bool autofocus = false,
  }) : super(
    key: key,
    autofocus: autofocus,
    hintText: hintText,
    hintStyle: hintStyle,
    keyboardType: TextInputType.text,
    obscureText: true,
    prefixIcon: prefixIcon,
    onChanged: onChanged,
    inputFormatters: [
      FilteringTextInputFormatter.deny(RegExp(r"[а-яА-Я]"))
    ],
    validator: validator ??
            (value) {
          final output = <String>[];
          if (value == null) return output;
          if (value.isEmpty) {
            output.add(S.current.inputErrorPassword);
            return output;
          }
          if (value.length < 8) {
            output.add(S.current.inputErrorPasswordIsShort);
          }
          if (!RegExp(r"[\d]").hasMatch(value)) {
            output.add(S.current.inputErrorPasswordNumbers);
          }
          return output;
        },
    nextFocus: nextFocus,
    autovalidate: autovalidate,
    onFieldSubmitted: onFieldSubmitted,
    isVisibleObscureButton: true,
  );
}

// const String _specSymbols = r"[-!?$%^&*()_+|~=`{}\[\]:;'@#"
//     '"'
//     "<>?,.\/]";
