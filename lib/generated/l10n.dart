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

  /// `Is It Safe?`
  String get appTitle {
    return Intl.message(
      'Is It Safe?',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get textLogin {
    return Intl.message(
      'Login',
      name: 'textLogin',
      desc: '',
      args: [],
    );
  }

  /// `Focus on`
  String get textOnBoarding1_0 {
    return Intl.message(
      'Focus on',
      name: 'textOnBoarding1_0',
      desc: '',
      args: [],
    );
  }

  /// `safety`
  String get textOnBoarding1_1 {
    return Intl.message(
      'safety',
      name: 'textOnBoarding1_1',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get textOnBoarding1_2 {
    return Intl.message(
      'and',
      name: 'textOnBoarding1_2',
      desc: '',
      args: [],
    );
  }

  /// `comunity`
  String get textOnBoarding1_3 {
    return Intl.message(
      'comunity',
      name: 'textOnBoarding1_3',
      desc: '',
      args: [],
    );
  }

  /// `Know where to go`
  String get textOnBoarding2_0 {
    return Intl.message(
      'Know where to go',
      name: 'textOnBoarding2_0',
      desc: '',
      args: [],
    );
  }

  /// `safely`
  String get textOnBoarding2_1 {
    return Intl.message(
      'safely',
      name: 'textOnBoarding2_1',
      desc: '',
      args: [],
    );
  }

  /// `Describe your`
  String get textOnBoarding3_0 {
    return Intl.message(
      'Describe your',
      name: 'textOnBoarding3_0',
      desc: '',
      args: [],
    );
  }

  /// `experiences`
  String get textOnBoarding3_1 {
    return Intl.message(
      'experiences',
      name: 'textOnBoarding3_1',
      desc: '',
      args: [],
    );
  }

  /// `and rate places`
  String get textOnBoarding3_2 {
    return Intl.message(
      'and rate places',
      name: 'textOnBoarding3_2',
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
      Locale.fromSubtags(languageCode: 'pt'),
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
