import 'package:flutter/material.dart';
import 'package:smart_bank/common/styles/app_colors.dart';
import 'package:smart_bank/common/widgets/one_or_another.dart';

class NotificationBadge extends StatelessWidget {
  const NotificationBadge({
    Key? key,
    this.child,
    this.left,
    this.top = 0.0,
    this.right = 0.0,
    this.bottom,
    this.size = 11.0,
    this.isBadgeVisible = false,
    this.borderWidth,
  }) : super(key: key);

  final Widget? child;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final double size;
  final bool isBadgeVisible;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    final icon = Icon(
      Icons.circle,
      color: AppColors.primary500,
      size: size,
    );
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child == null ? const SizedBox.shrink() : child!,
        Positioned(
          left: left,
          top: top,
          right: right,
          bottom: bottom,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: isBadgeVisible
                ? OneOrAnother(
                    showAnother: borderWidth != null,
                    childOne: icon,
                    childAnother: Container(
                      padding: EdgeInsets.all(borderWidth ?? 0.0),
                      decoration:
                          const BoxDecoration(color: AppColors.white, shape: BoxShape.circle),
                      child: icon,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
