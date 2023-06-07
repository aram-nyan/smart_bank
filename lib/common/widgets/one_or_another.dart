import 'package:flutter/material.dart';

class OneOrAnother extends StatelessWidget {
  const OneOrAnother({
    required this.showAnother,
    required this.childOne,
    required this.childAnother,
    this.placeholder,
  });
  final bool showAnother;
  final Widget childOne;
  final Widget childAnother;
  final Widget? placeholder;

  @override
  Widget build(BuildContext context) {
    if (showAnother == false) return childOne;
    if (placeholder == null) return childAnother;
    return Stack(
      children: [
        placeholder!,
        Positioned.fill(
          child: Center(
            child: childAnother,
          ),
        ),
      ],
    );
  }
}
