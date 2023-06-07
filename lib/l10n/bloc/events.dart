part of 'bloc_locale.dart';

abstract class EventBlocLocale {}

class EventLocaleRead extends EventBlocLocale {}

class EventLocaleSwitchTo extends EventBlocLocale {
  EventLocaleSwitchTo(this.locale);

  final AppLocale locale;
}
