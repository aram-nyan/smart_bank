import 'package:auto_route/auto_route.dart';
import 'package:smart_bank/mobile/ui/auth/account_setup/screen_about_yourself.dart';
import 'package:smart_bank/mobile/ui/auth/account_setup/screen_get_started.dart';
import 'package:smart_bank/mobile/ui/auth/login/screen_login.dart';
import 'package:smart_bank/mobile/ui/auth/phone_verification/screen_phone.dart';
import 'package:smart_bank/mobile/ui/auth/phone_verification/screen_phone_verified.dart';
import 'package:smart_bank/mobile/ui/auth/phone_verification/screen_sms.dart';
import 'package:smart_bank/mobile/ui/auth/welcome_onboarding/screen_onboarding.dart';
import 'package:smart_bank/mobile/ui/home/home_screen.dart';
import 'package:smart_bank/mobile/ui/profile/profile_settings/screen_account_details.dart';
import 'package:smart_bank/mobile/ui/profile/profile_settings/screen_transaction_history.dart';
import 'package:smart_bank/mobile/ui/splash/screen_splash.dart';
import 'package:smart_bank/mobile/ui/top_up_account/screen_card_info.dart';
import 'package:smart_bank/mobile/ui/top_up_account/screen_card_name.dart';
import 'package:smart_bank/mobile/ui/top_up_account/screen_card_ready_splash.dart';
import 'package:smart_bank/mobile/ui/top_up_account/screen_debit_or_credit.dart';
import 'package:smart_bank/mobile/ui/top_up_account/screen_topup_account.dart';
import 'package:smart_bank/mobile/ui/transfer_money/screen_operation_complete.dart';
import 'package:smart_bank/mobile/ui/transfer_money/screen_transfer_money.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    CupertinoRoute(page: ScreenSplash),
    CupertinoRoute(page: ScreenWelcomeOnboarding, initial: true),
    CupertinoRoute(page: ScreenLogin),
    CupertinoRoute(page: ScreenPhone),
    CupertinoRoute(page: ScreenSms),
    CupertinoRoute(page: ScreenPhoneVerified),
    CupertinoRoute(page: ScreenGetStarted),
    CupertinoRoute(page: ScreenAboutYourself),
    CupertinoRoute(page: ScreenCardName),
    CupertinoRoute(page: ScreenCardReadySplash),
    CupertinoRoute(page: ScreenTopUpAccount),
    CupertinoRoute(page: ScreenCardInfo),
    CupertinoRoute(page: ScreenDebitOrCredit),
    CupertinoRoute(page: ScreenAccountDetails),
    CupertinoRoute(page: ScreenHome),
    CupertinoRoute(page: ScreenTransferMoney),
    CupertinoRoute(page: ScreenTransactionHistory),
    CupertinoRoute(page: ScreenOperationComplete),
    // CupertinoRoute(page: ),
  ],
)
class $MobileAppRouter {}

extension Go on StackRouter {
  Future goOffTo(PageRouteInfo<dynamic> route) async {
    //TODO: Refactor
    await Future.delayed(const Duration(milliseconds: 400));
    await pushAndPopUntil(
      route,
      predicate: (_) => false,
    );
  }
}
