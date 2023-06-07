// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:smart_bank/common/widgets/notification_badge.dart';

import '../app_nav_bar.dart';

class AppNavBarItem implements BottomNavigationBarItem {
  AppNavBarItem({
    required Widget icon,
    Widget? title,
    this.label,
    Widget? activeIcon,
    this.backgroundColor,
    this.tooltip,
    required this.type,
    this.onTap,
  })  : _icon = icon,
        _activeIcon = activeIcon;
  final Widget _icon;
  final Widget? _activeIcon;
  late bool isAnyUnread;
  final VoidCallback? onTap;
  final NavBarItem type;

  @override
  Widget get icon => Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: NotificationBadge(
          isBadgeVisible: isAnyUnread,
          top: -12.0,
          right: -10.0,
          size: 7.0,
          child: _icon,
        ),
      );

  @override
  Widget get activeIcon {
    if (_activeIcon == null) return icon;
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: NotificationBadge(
        isBadgeVisible: isAnyUnread,
        top: -12.0,
        right: -10.0,
        size: 7.0,
        child: _activeIcon,
      ),
    );
  }

  @override
  Color? backgroundColor;

  @override
  String? label;

  @override
  Widget? title;

  @override
  String? tooltip;
}
