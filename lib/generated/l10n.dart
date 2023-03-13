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

  /// `Программа Тренировок`
  String get trainingProgramLabel {
    return Intl.message(
      'Программа Тренировок',
      name: 'trainingProgramLabel',
      desc: 'Это программа тренировок',
      args: [],
    );
  }

  /// `СТАТИСТИКА`
  String get statisticsLabel {
    return Intl.message(
      'СТАТИСТИКА',
      name: 'statisticsLabel',
      desc: '',
      args: [],
    );
  }

  /// `ХОЧУ`
  String get wantLabel {
    return Intl.message(
      'ХОЧУ',
      name: 'wantLabel',
      desc: '',
      args: [],
    );
  }

  /// `ОТЖИМАТЬСЯ`
  String get pushUpFixedTimedLabel {
    return Intl.message(
      'ОТЖИМАТЬСЯ',
      name: 'pushUpFixedTimedLabel',
      desc: '',
      args: [],
    );
  }

  /// `НА ВЫНОСЛИВОСТь`
  String get staminaLabel {
    return Intl.message(
      'НА ВЫНОСЛИВОСТь',
      name: 'staminaLabel',
      desc: '',
      args: [],
    );
  }

  /// `{count}\nРАЗ`
  String countLabelWithParameter(int count) {
    return Intl.message(
      '$count\nРАЗ',
      name: 'countLabelWithParameter',
      desc: '',
      args: [count],
    );
  }

  /// `В НЕСКОЛЬКО ПОДХОДОВ`
  String get approachesPart1Label {
    return Intl.message(
      'В НЕСКОЛЬКО ПОДХОДОВ',
      name: 'approachesPart1Label',
      desc: '',
      args: [],
    );
  }

  /// `ПОДХОДА`
  String get approachLabel {
    return Intl.message(
      'ПОДХОДА',
      name: 'approachLabel',
      desc: '',
      args: [],
    );
  }

  /// `ОТДЫХ`
  String get restLabel {
    return Intl.message(
      'ОТДЫХ',
      name: 'restLabel',
      desc: '',
      args: [],
    );
  }

  /// `10:00`
  String get fixedTimeLabel {
    return Intl.message(
      '10:00',
      name: 'fixedTimeLabel',
      desc: '',
      args: [],
    );
  }

  /// `10`
  String get pushUpFixedCountLabel {
    return Intl.message(
      '10',
      name: 'pushUpFixedCountLabel',
      desc: '',
      args: [],
    );
  }

  /// `{count,plural, =1{РАЗ} =2{РАЗА} other{Отхер}}`
  String countLabel(int count) {
    return Intl.plural(
      count,
      one: 'РАЗ',
      two: 'РАЗА',
      other: 'Отхер',
      name: 'countLabel',
      desc: 'A plural message',
      args: [count],
    );
  }

  /// `{approaches}`
  String countApproachesLabel(int approaches) {
    return Intl.message(
      '$approaches',
      name: 'countApproachesLabel',
      desc: '',
      args: [approaches],
    );
  }

  /// `{time}`
  String timeBetweenApproachesLabel(DateTime time) {
    final DateFormat timeDateFormat = DateFormat.ms(Intl.getCurrentLocale());
    final String timeString = timeDateFormat.format(time);

    return Intl.message(
      '$timeString',
      name: 'timeBetweenApproachesLabel',
      desc: '',
      args: [timeString],
    );
  }

  /// `ХОЧУ ОТЖИМАТЬСЯ`
  String get homeFixedTimeModeLabel {
    return Intl.message(
      'ХОЧУ ОТЖИМАТЬСЯ',
      name: 'homeFixedTimeModeLabel',
      desc: '',
      args: [],
    );
  }

  /// `МИНУТ`
  String get homeFixedTimeModeDescription {
    return Intl.message(
      'МИНУТ',
      name: 'homeFixedTimeModeDescription',
      desc: '',
      args: [],
    );
  }

  /// `{time}`
  String homeFixedTimeModeTime(DateTime time) {
    final DateFormat timeDateFormat = DateFormat.ms(Intl.getCurrentLocale());
    final String timeString = timeDateFormat.format(time);

    return Intl.message(
      '$timeString',
      name: 'homeFixedTimeModeTime',
      desc: '',
      args: [timeString],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
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
