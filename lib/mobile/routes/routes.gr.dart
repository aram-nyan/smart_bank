// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

import '../ui/auth/account_setup/screen_about_yourself.dart' as _i8;
import '../ui/auth/account_setup/screen_get_started.dart' as _i7;
import '../ui/auth/login/screen_login.dart' as _i3;
import '../ui/auth/phone_verification/screen_phone.dart' as _i4;
import '../ui/auth/phone_verification/screen_phone_verified.dart' as _i6;
import '../ui/auth/phone_verification/screen_sms.dart' as _i5;
import '../ui/auth/welcome_onboarding/screen_onboarding.dart' as _i2;
import '../ui/home/home_screen.dart' as _i15;
import '../ui/profile/profile_settings/screen_account_details.dart' as _i14;
import '../ui/profile/profile_settings/screen_transaction_history.dart' as _i17;
import '../ui/splash/screen_splash.dart' as _i1;
import '../ui/top_up_account/screen_card_info.dart' as _i12;
import '../ui/top_up_account/screen_card_name.dart' as _i9;
import '../ui/top_up_account/screen_card_ready_splash.dart' as _i10;
import '../ui/top_up_account/screen_debit_or_credit.dart' as _i13;
import '../ui/top_up_account/screen_topup_account.dart' as _i11;
import '../ui/transfer_money/screen_operation_complete.dart' as _i18;
import '../ui/transfer_money/screen_transfer_money.dart' as _i16;

class MobileAppRouter extends _i19.RootStackRouter {
  MobileAppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    ScreenSplashRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ScreenSplash(),
      );
    },
    ScreenWelcomeOnboardingRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ScreenWelcomeOnboarding(),
      );
    },
    ScreenLoginRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ScreenLogin(),
      );
    },
    ScreenPhoneRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ScreenPhone(),
      );
    },
    ScreenSmsRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ScreenSms(),
      );
    },
    ScreenPhoneVerifiedRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ScreenPhoneVerified(),
      );
    },
    ScreenGetStartedRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ScreenGetStarted(),
      );
    },
    ScreenAboutYourselfRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ScreenAboutYourself(),
      );
    },
    ScreenCardNameRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ScreenCardName(),
      );
    },
    ScreenCardReadySplashRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ScreenCardReadySplash(),
      );
    },
    ScreenTopUpAccountRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i11.ScreenTopUpAccount(),
      );
    },
    ScreenCardInfoRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i12.ScreenCardInfo(),
      );
    },
    ScreenDebitOrCreditRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i13.ScreenDebitOrCredit(),
      );
    },
    ScreenAccountDetailsRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i14.ScreenAccountDetails(),
      );
    },
    ScreenHomeRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i15.ScreenHome(),
      );
    },
    ScreenTransferMoneyRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i16.ScreenTransferMoney(),
      );
    },
    ScreenTransactionHistoryRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i17.ScreenTransactionHistory(),
      );
    },
    ScreenOperationCompleteRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i18.ScreenOperationComplete(),
      );
    },
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(
          ScreenSplashRoute.name,
          path: '/screen-splash',
        ),
        _i19.RouteConfig(
          ScreenWelcomeOnboardingRoute.name,
          path: '/',
        ),
        _i19.RouteConfig(
          ScreenLoginRoute.name,
          path: '/screen-login',
        ),
        _i19.RouteConfig(
          ScreenPhoneRoute.name,
          path: '/screen-phone',
        ),
        _i19.RouteConfig(
          ScreenSmsRoute.name,
          path: '/screen-sms',
        ),
        _i19.RouteConfig(
          ScreenPhoneVerifiedRoute.name,
          path: '/screen-phone-verified',
        ),
        _i19.RouteConfig(
          ScreenGetStartedRoute.name,
          path: '/screen-get-started',
        ),
        _i19.RouteConfig(
          ScreenAboutYourselfRoute.name,
          path: '/screen-about-yourself',
        ),
        _i19.RouteConfig(
          ScreenCardNameRoute.name,
          path: '/screen-card-name',
        ),
        _i19.RouteConfig(
          ScreenCardReadySplashRoute.name,
          path: '/screen-card-ready-splash',
        ),
        _i19.RouteConfig(
          ScreenTopUpAccountRoute.name,
          path: '/screen-top-up-account',
        ),
        _i19.RouteConfig(
          ScreenCardInfoRoute.name,
          path: '/screen-card-info',
        ),
        _i19.RouteConfig(
          ScreenDebitOrCreditRoute.name,
          path: '/screen-debit-or-credit',
        ),
        _i19.RouteConfig(
          ScreenAccountDetailsRoute.name,
          path: '/screen-account-details',
        ),
        _i19.RouteConfig(
          ScreenHomeRoute.name,
          path: '/screen-home',
        ),
        _i19.RouteConfig(
          ScreenTransferMoneyRoute.name,
          path: '/screen-transfer-money',
        ),
        _i19.RouteConfig(
          ScreenTransactionHistoryRoute.name,
          path: '/screen-transaction-history',
        ),
        _i19.RouteConfig(
          ScreenOperationCompleteRoute.name,
          path: '/screen-operation-complete',
        ),
      ];
}

/// generated route for
/// [_i1.ScreenSplash]
class ScreenSplashRoute extends _i19.PageRouteInfo<void> {
  const ScreenSplashRoute()
      : super(
          ScreenSplashRoute.name,
          path: '/screen-splash',
        );

  static const String name = 'ScreenSplashRoute';
}

/// generated route for
/// [_i2.ScreenWelcomeOnboarding]
class ScreenWelcomeOnboardingRoute extends _i19.PageRouteInfo<void> {
  const ScreenWelcomeOnboardingRoute()
      : super(
          ScreenWelcomeOnboardingRoute.name,
          path: '/',
        );

  static const String name = 'ScreenWelcomeOnboardingRoute';
}

/// generated route for
/// [_i3.ScreenLogin]
class ScreenLoginRoute extends _i19.PageRouteInfo<void> {
  const ScreenLoginRoute()
      : super(
          ScreenLoginRoute.name,
          path: '/screen-login',
        );

  static const String name = 'ScreenLoginRoute';
}

/// generated route for
/// [_i4.ScreenPhone]
class ScreenPhoneRoute extends _i19.PageRouteInfo<void> {
  const ScreenPhoneRoute()
      : super(
          ScreenPhoneRoute.name,
          path: '/screen-phone',
        );

  static const String name = 'ScreenPhoneRoute';
}

/// generated route for
/// [_i5.ScreenSms]
class ScreenSmsRoute extends _i19.PageRouteInfo<void> {
  const ScreenSmsRoute()
      : super(
          ScreenSmsRoute.name,
          path: '/screen-sms',
        );

  static const String name = 'ScreenSmsRoute';
}

/// generated route for
/// [_i6.ScreenPhoneVerified]
class ScreenPhoneVerifiedRoute extends _i19.PageRouteInfo<void> {
  const ScreenPhoneVerifiedRoute()
      : super(
          ScreenPhoneVerifiedRoute.name,
          path: '/screen-phone-verified',
        );

  static const String name = 'ScreenPhoneVerifiedRoute';
}

/// generated route for
/// [_i7.ScreenGetStarted]
class ScreenGetStartedRoute extends _i19.PageRouteInfo<void> {
  const ScreenGetStartedRoute()
      : super(
          ScreenGetStartedRoute.name,
          path: '/screen-get-started',
        );

  static const String name = 'ScreenGetStartedRoute';
}

/// generated route for
/// [_i8.ScreenAboutYourself]
class ScreenAboutYourselfRoute extends _i19.PageRouteInfo<void> {
  const ScreenAboutYourselfRoute()
      : super(
          ScreenAboutYourselfRoute.name,
          path: '/screen-about-yourself',
        );

  static const String name = 'ScreenAboutYourselfRoute';
}

/// generated route for
/// [_i9.ScreenCardName]
class ScreenCardNameRoute extends _i19.PageRouteInfo<void> {
  const ScreenCardNameRoute()
      : super(
          ScreenCardNameRoute.name,
          path: '/screen-card-name',
        );

  static const String name = 'ScreenCardNameRoute';
}

/// generated route for
/// [_i10.ScreenCardReadySplash]
class ScreenCardReadySplashRoute extends _i19.PageRouteInfo<void> {
  const ScreenCardReadySplashRoute()
      : super(
          ScreenCardReadySplashRoute.name,
          path: '/screen-card-ready-splash',
        );

  static const String name = 'ScreenCardReadySplashRoute';
}

/// generated route for
/// [_i11.ScreenTopUpAccount]
class ScreenTopUpAccountRoute extends _i19.PageRouteInfo<void> {
  const ScreenTopUpAccountRoute()
      : super(
          ScreenTopUpAccountRoute.name,
          path: '/screen-top-up-account',
        );

  static const String name = 'ScreenTopUpAccountRoute';
}

/// generated route for
/// [_i12.ScreenCardInfo]
class ScreenCardInfoRoute extends _i19.PageRouteInfo<void> {
  const ScreenCardInfoRoute()
      : super(
          ScreenCardInfoRoute.name,
          path: '/screen-card-info',
        );

  static const String name = 'ScreenCardInfoRoute';
}

/// generated route for
/// [_i13.ScreenDebitOrCredit]
class ScreenDebitOrCreditRoute extends _i19.PageRouteInfo<void> {
  const ScreenDebitOrCreditRoute()
      : super(
          ScreenDebitOrCreditRoute.name,
          path: '/screen-debit-or-credit',
        );

  static const String name = 'ScreenDebitOrCreditRoute';
}

/// generated route for
/// [_i14.ScreenAccountDetails]
class ScreenAccountDetailsRoute extends _i19.PageRouteInfo<void> {
  const ScreenAccountDetailsRoute()
      : super(
          ScreenAccountDetailsRoute.name,
          path: '/screen-account-details',
        );

  static const String name = 'ScreenAccountDetailsRoute';
}

/// generated route for
/// [_i15.ScreenHome]
class ScreenHomeRoute extends _i19.PageRouteInfo<void> {
  const ScreenHomeRoute()
      : super(
          ScreenHomeRoute.name,
          path: '/screen-home',
        );

  static const String name = 'ScreenHomeRoute';
}

/// generated route for
/// [_i16.ScreenTransferMoney]
class ScreenTransferMoneyRoute extends _i19.PageRouteInfo<void> {
  const ScreenTransferMoneyRoute()
      : super(
          ScreenTransferMoneyRoute.name,
          path: '/screen-transfer-money',
        );

  static const String name = 'ScreenTransferMoneyRoute';
}

/// generated route for
/// [_i17.ScreenTransactionHistory]
class ScreenTransactionHistoryRoute extends _i19.PageRouteInfo<void> {
  const ScreenTransactionHistoryRoute()
      : super(
          ScreenTransactionHistoryRoute.name,
          path: '/screen-transaction-history',
        );

  static const String name = 'ScreenTransactionHistoryRoute';
}

/// generated route for
/// [_i18.ScreenOperationComplete]
class ScreenOperationCompleteRoute extends _i19.PageRouteInfo<void> {
  const ScreenOperationCompleteRoute()
      : super(
          ScreenOperationCompleteRoute.name,
          path: '/screen-operation-complete',
        );

  static const String name = 'ScreenOperationCompleteRoute';
}
