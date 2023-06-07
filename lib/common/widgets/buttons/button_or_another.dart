import 'package:flutter/material.dart';
import 'package:smart_bank/common/widgets/buttons/base_button.dart';
import 'package:smart_bank/common/widgets/one_or_another.dart';

import 'default/app_button_placeholder.dart';
import 'outlined/outlined_button_placeholder.dart';

class ButtonOrAnother extends StatelessWidget {
  const ButtonOrAnother({
    required this.showAnother,
    required this.button,
    required this.placeholder,
    required this.anotherWidget,
  });
  ButtonOrAnother.defaultButton({
    required this.showAnother,
    required this.button,
    required this.anotherWidget,
  }) : placeholder = AppButtonPlaceholder(
          label: button.label ?? '',
          margin: button.margin,
        );
  ButtonOrAnother.borderButton({
    required this.showAnother,
    required this.button,
    required this.anotherWidget,
  }) : placeholder = AppOutlinedButtonPlaceholder(
          label: button.label ?? '',
          margin: button.margin,
        );

  final bool showAnother;
  final BaseButton button;
  final Widget anotherWidget;
  final BaseButton placeholder;

  @override
  Widget build(BuildContext context) {
    return OneOrAnother(
      showAnother: showAnother,
      childOne: button,
      childAnother: anotherWidget,
      placeholder: placeholder,
    );
  }
}
