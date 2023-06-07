part of '../bloc_locale.dart';

extension SwitchTo on BlocLocale {
  Future<void> _switchTo(
    EventLocaleSwitchTo event,
    Emitter<StateBlocLocale> emit,
  ) async {
    if (event.locale == locale) return;
    repo.update(event.locale);
    emit(
      StateLocaleData(locale: event.locale),
    );
  }
}
