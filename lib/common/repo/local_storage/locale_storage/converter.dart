part of 'package:smart_bank/common/dto/app_locale.dart';

extension ConverterToString on String? {
  AppLocale? toAppLocale() {
    if (this == null) return null;
    return AppLocale.values.firstWhereOrNull(
          (locale) => locale.name == this,
    );
  }
}
