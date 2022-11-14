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

  /// `Training Program`
  String get trainingProgramLabel {
    return Intl.message(
      'Training Program',
      name: 'trainingProgramLabel',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statisticsLabel {
    return Intl.message(
      'Statistics',
      name: 'statisticsLabel',
      desc: '',
      args: [],
    );
  }

  /// `WANT`
  String get wantLabel {
    return Intl.message(
      'WANT',
      name: 'wantLabel',
      desc: '',
      args: [],
    );
  }

  /// `TO PUSH UP`
  String get pushUpFixedTimedLabel {
    return Intl.message(
      'TO PUSH UP',
      name: 'pushUpFixedTimedLabel',
      desc: '',
      args: [],
    );
  }

  /// `FOR ENDURANCE`
  String get staminaLabel {
    return Intl.message(
      'FOR ENDURANCE',
      name: 'staminaLabel',
      desc: '',
      args: [],
    );
  }

  /// `MINUTES`
  String get minutesLabel {
    return Intl.message(
      'MINUTES',
      name: 'minutesLabel',
      desc: '',
      args: [],
    );
  }

  /// `TIMES`
  String get countLabel {
    return Intl.message(
      'TIMES',
      name: 'countLabel',
      desc: '',
      args: [],
    );
  }

  /// `IN MULTIPLE APPROACHES`
  String get approachesPart1Label {
    return Intl.message(
      'IN MULTIPLE APPROACHES',
      name: 'approachesPart1Label',
      desc: '',
      args: [],
    );
  }

  /// `APPROACHES`
  String get approachesPart2Label {
    return Intl.message(
      'APPROACHES',
      name: 'approachesPart2Label',
      desc: '',
      args: [],
    );
  }

  /// `APPROACH`
  String get approachLabel {
    return Intl.message(
      'APPROACH',
      name: 'approachLabel',
      desc: '',
      args: [],
    );
  }

  /// `REST`
  String get restLabel {
    return Intl.message(
      'REST',
      name: 'restLabel',
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
