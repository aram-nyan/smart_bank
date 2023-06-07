import 'package:smart_bank/common/constants/logger.dart';
import 'package:smart_bank/common/dto/app_locale.dart';
import 'package:smart_bank/common/repo/local_storage/repo_shared_prefs.dart';
import 'package:smart_bank/l10n/generated/l10n.dart';
import 'package:smart_bank/mobile/ui/local_auth/dto/app_error.dart';

import 'base_repo_locale_storage.dart';

class RepoLocaleStorage implements BaseRepoLocaleStorage {
  RepoLocaleStorage({
    required this.sharedPrefs,
  });
  final RepoSharedPrefs sharedPrefs;

  @override
  Future<RepoLocaleResult> update(AppLocale locale) async {
    try {
      await sharedPrefs.storage.setString(
        _Fields.locale,
        locale.name,
      );
      return RepoLocaleResult(locale: locale);
    } catch (error) {
      appLogger.e("Error in $runtimeType  | $error}");
      return RepoLocaleResult(
        error: AppError(
          message: S.current.errorGeneral,
        ),
      );
    }
  }

  @override
  RepoLocaleResult read() {
    try {
      return RepoLocaleResult(
        locale: sharedPrefs.storage.getString(_Fields.locale).toAppLocale(),
      );
    } catch (error) {
      appLogger.e("Error in $runtimeType  | $error}");
      return RepoLocaleResult(
        error: AppError(
          message: S.current.errorGeneral,
        ),
      );
    }
  }

  @override
  Future<RepoLocaleResult> delete() async {
    try {
      await sharedPrefs.storage.remove(_Fields.locale);
      return RepoLocaleResult();
    } catch (error) {
      appLogger.e("Error in $runtimeType  | $error}");
      return RepoLocaleResult(
        error: AppError(
          message: S.current.errorGeneral,
        ),
      );
    }
  }
}

abstract class _Fields {
  static const String locale = 'locale';
}
