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

  /// `Third task Simple Code`
  String get homeScreenTitle {
    return Intl.message(
      'Third task Simple Code',
      name: 'homeScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Authorization`
  String get authorization {
    return Intl.message(
      'Authorization',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Counter value`
  String get counterValue {
    return Intl.message(
      'Counter value',
      name: 'counterValue',
      desc: '',
      args: [],
    );
  }

  /// `Enter login and password`
  String get inputLoginAndPassword {
    return Intl.message(
      'Enter login and password',
      name: 'inputLoginAndPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Login cannot be empty`
  String get inputErrorEmptyLogin {
    return Intl.message(
      'Login cannot be empty',
      name: 'inputErrorEmptyLogin',
      desc: '',
      args: [],
    );
  }

  /// `Login must contain at least 3 characters`
  String get inputErrorLoginIsShort {
    return Intl.message(
      'Login must contain at least 3 characters',
      name: 'inputErrorLoginIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty`
  String get inputErrorEmptyPassword {
    return Intl.message(
      'Password cannot be empty',
      name: 'inputErrorEmptyPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least 8 characters`
  String get inputErrorPasswordIsShort {
    return Intl.message(
      'Password must contain at least 8 characters',
      name: 'inputErrorPasswordIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message(
      'Russian',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Find character`
  String get findCharacter {
    return Intl.message(
      'Find character',
      name: 'findCharacter',
      desc: '',
      args: [],
    );
  }

  /// `Total characters: {total}`
  String charactersTotal(Object total) {
    return Intl.message(
      'Total characters: $total',
      name: 'charactersTotal',
      desc: '',
      args: [total],
    );
  }

  /// `Dead`
  String get dead {
    return Intl.message(
      'Dead',
      name: 'dead',
      desc: '',
      args: [],
    );
  }

  /// `Alive`
  String get alive {
    return Intl.message(
      'Alive',
      name: 'alive',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account yet`
  String get dontHaveAnAccountHint {
    return Intl.message(
      'Don\'t have an account yet',
      name: 'dontHaveAnAccountHint',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get createAccount {
    return Intl.message(
      'Create',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Wrong login or password`
  String get wrongLoginOrPassword {
    return Intl.message(
      'Wrong login or password',
      name: 'wrongLoginOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Persons`
  String get persons {
    return Intl.message(
      'Persons',
      name: 'persons',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
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
