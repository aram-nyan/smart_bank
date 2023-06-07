// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Карты`
  String get cards {
    return Intl.message(
      'Карты',
      name: 'cards',
      desc: '',
      args: [],
    );
  }

  /// `Транзакции`
  String get transactions {
    return Intl.message(
      'Транзакции',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Главная`
  String get home {
    return Intl.message(
      'Главная',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Что-то пошло не так :-(`
  String get errorGeneral {
    return Intl.message(
      'Что-то пошло не так :-(',
      name: 'errorGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте ввод`
  String get inputErrorGeneral {
    return Intl.message(
      'Проверьте ввод',
      name: 'inputErrorGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Не менее 3 символов`
  String get inputErrorOsiNameIsShort {
    return Intl.message(
      'Не менее 3 символов',
      name: 'inputErrorOsiNameIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Введите наименование`
  String get inputErrorOsiNameisEmpty {
    return Intl.message(
      'Введите наименование',
      name: 'inputErrorOsiNameisEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Введите пароль`
  String get inputErrorPassword {
    return Intl.message(
      'Введите пароль',
      name: 'inputErrorPassword',
      desc: '',
      args: [],
    );
  }

  /// `Не менее 8 символов`
  String get inputErrorPasswordIsShort {
    return Intl.message(
      'Не менее 8 символов',
      name: 'inputErrorPasswordIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Латинские буквы`
  String get inputErrorPasswordLetters {
    return Intl.message(
      'Латинские буквы',
      name: 'inputErrorPasswordLetters',
      desc: '',
      args: [],
    );
  }

  /// `Пароли не совпадают`
  String get inputErrorPasswordMatch {
    return Intl.message(
      'Пароли не совпадают',
      name: 'inputErrorPasswordMatch',
      desc: '',
      args: [],
    );
  }

  /// `Не менее одной цифры`
  String get inputErrorPasswordNumbers {
    return Intl.message(
      'Не менее одной цифры',
      name: 'inputErrorPasswordNumbers',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте номер`
  String get inputErrorPhone {
    return Intl.message(
      'Проверьте номер',
      name: 'inputErrorPhone',
      desc: '',
      args: [],
    );
  }

  /// `Введите номер`
  String get inputErrorPhoneIsEmpty {
    return Intl.message(
      'Введите номер',
      name: 'inputErrorPhoneIsEmpty',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'EN'),
      Locale.fromSubtags(languageCode: 'kk', countryCode: 'KZ'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
