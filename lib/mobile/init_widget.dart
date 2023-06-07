import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_bank/common/repo/local_storage/repo_shared_prefs.dart';
import 'package:smart_bank/l10n/bloc/bloc_locale.dart';

class InitWidget extends StatelessWidget {
  const InitWidget(
      {Key? key,
      this.child,
      required this.blocLocale,
      required this.repoSharedPrefs})
      : super(key: key);
  final Widget? child;
  final BlocLocale blocLocale;
  final RepoSharedPrefs repoSharedPrefs;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => RepoSharedPrefs(),
        ),
      ],
      child: MultiBlocProvider(
          providers: [BlocProvider.value(value: blocLocale)],
          child: Builder(builder: (context) {
            return MultiBlocProvider(providers: [
              BlocProvider.value(value: blocLocale),
            ], child: child!);
          })),
    );
  }
}
