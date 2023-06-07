import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:smart_bank/common/constants/logger.dart';
import 'package:smart_bank/common/repo/local_storage/locale_storage/repo_locale_storage.dart';
import 'package:smart_bank/common/repo/local_storage/repo_shared_prefs.dart';
import 'package:smart_bank/common/styles/app_colors.dart';
import 'package:smart_bank/common/styles/main_theme.dart';
import 'package:smart_bank/common/utils/extensions/bloc.dart';
import 'package:smart_bank/l10n/bloc/bloc_locale.dart';
import 'package:smart_bank/l10n/generated/l10n.dart';
import 'package:smart_bank/mobile/init_widget.dart';
import 'package:smart_bank/mobile/routes/routes.gr.dart';

//
// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext? context) {
//     return super.createHttpClient(context)
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//   }
// }

final onLaunchPath = <PageRouteInfo>[];
// final blocNotifications = BlocNotifications();
// final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
// final FirebaseAnalyticsObserver observer =
// FirebaseAnalyticsObserver(analytics: analytics);
Future<void> main() async {
  // HttpOverrides.global = MyHttpOverrides();
  // await blocNotifications.init();
  // await DynamicLinksService.init();
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //       statusBarColor: AppColors.white,
  //       statusBarIconBrightness: Brightness.dark,
  //       systemNavigationBarColor: AppColors.white,
  //       systemNavigationBarContrastEnforced: true,
  //       systemNavigationBarIconBrightness: Brightness.dark,
  //       systemNavigationBarDividerColor: AppColors.white),
  // );
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitDown,
  //   DeviceOrientation.portraitUp,
  // ]);
  String platformLocale = '';
  try {
    platformLocale = Platform.localeName;
  } catch (error) {
    platformLocale = '';
    appLogger.e("👀 Can't get Platform.localeName | $error}");
  }

  final repoSharedPrefs = RepoSharedPrefs();
  await repoSharedPrefs.init();

  final blocLocale = BlocLocale(
    repo: RepoLocaleStorage(
      sharedPrefs: repoSharedPrefs,
    ),
    platformLocale: platformLocale,
  );

  await blocLocale.handleEvent(
    EventLocaleRead(),
    awaitForStates: [
      StateLocaleData,
      StateLocaleError,
    ],
  );
  runApp(MyApp(
    repoSharedPrefs: repoSharedPrefs,
    blocLocale: blocLocale,
  ));
}

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
final appRouter = MobileAppRouter(
  rootNavigatorKey,
);
final rootNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp(
  {
    required this.repoSharedPrefs,
    required this.blocLocale,
  }
  );
  final RepoSharedPrefs repoSharedPrefs;
  final BlocLocale blocLocale;

  @override
  Widget build(BuildContext context) {
    return
      // BlocBuilder<BlocLocale, StateBlocLocale>(
      // bloc: blocLocale,
      // builder: (context, state) {
      //   return MultiProvider(
      //     providers: [
      //       Provider<FirebaseAnalytics>.value(value: analytics),
      //       Provider<FirebaseAnalyticsObserver>.value(value: observer),
      //     ],
      //     child:
          MaterialApp.router(
            scaffoldMessengerKey: scaffoldMessengerKey,
            theme: mainTheme,
            debugShowCheckedModeBanner: false,
            locale: blocLocale.uiLocale,
            routeInformationParser: appRouter.defaultRouteParser(),
            routerDelegate: appRouter.delegate(),
            title: 'Smart Bank',
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: blocLocale.supportedLocales,
            builder: (context, child) {
              return InitWidget(
                  key: const ValueKey('init_widget'),
                  repoSharedPrefs: repoSharedPrefs,
                  blocLocale: blocLocale,
                  child: child!);
            },
          // ),
        // );
      // },
    // );
          );
  }
}
