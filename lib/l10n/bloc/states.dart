part of 'bloc_locale.dart';

abstract class StateBlocLocale {}

class StateLocaleInitial extends StateBlocLocale {}

class StateLocaleData extends StateBlocLocale {
  StateLocaleData({required this.locale});

  final AppLocale locale;

  @override
  String toString() => 'StateLocaleData(locale: $locale)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StateLocaleData && other.locale == locale;
  }

  @override
  int get hashCode => locale.hashCode;
}

class StateLocaleError extends StateBlocLocale {
  StateLocaleError({
    required this.error,
  });

  final AppError error;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StateLocaleError && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;

  @override
  String toString() => 'StateLocaleError(error: $error)';
}
