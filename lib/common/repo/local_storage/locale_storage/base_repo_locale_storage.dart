import 'package:smart_bank/common/dto/app_locale.dart';
import 'package:smart_bank/mobile/ui/local_auth/dto/app_error.dart';

abstract class BaseRepoLocaleStorage {
  Future<RepoLocaleResult> update(AppLocale locale);

  RepoLocaleResult read();

  Future<RepoLocaleResult> delete();
}

class RepoLocaleResult {
  RepoLocaleResult({
    this.error,
    this.locale,
  });

  final AppError? error;
  final AppLocale? locale;

  @override
  String toString() => 'RepoLocaleResult(error: $error, locale: $locale)';
}
