import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

import '../../../../data/data.dart';
import '../../../../generated/l10n.dart';
import '../../../components/components.dart';
import '../../home.dart';

ApproachesModeViewModel approachesModeViewModelFactory(BuildContext context) =>
    _ApproachesModeViewModelImpl(
      onConfigurationChanged: context.read(),
    );

abstract class ApproachesModeViewModel extends ViewModel {
  String countLabelWithParameter(BuildContext context);

  String fixedCountLabel(BuildContext context);

  String countLabel(BuildContext context);

  String approachesPart1Label(BuildContext context);

  String countApproachesLabel(BuildContext context);

  String approachLabel(BuildContext context);

  String timeBetweenApproachesLabel(BuildContext context);

  String restLabel(BuildContext context);

  ValueListenable<String> get countPushUps;

  ValueListenable<String> get approaches;

  ValueListenable<String> get time;

  void onCountMinusButtonPressed();

  void onCountPlusButtonPressed();

  void onApproachMinusButtonPressed();

  void onApproachPlusButtonPressed();

  void onTimeMinusButtonPressed();

  void onTimePlusButtonPressed();
}

class _ApproachesModeViewModelImpl extends ApproachesModeViewModel {
  _ApproachesModeViewModelImpl({
    required OnConfigurationChanged onConfigurationChanged,
  }) : _onConfigurationChanged = onConfigurationChanged {
    _onConfigurationChanged(_configuration);
  }

  @override
  late final ValueNotifier<String> countPushUps = ValueNotifier(_pushUps);

  @override
  late final ValueNotifier<String> approaches = ValueNotifier(_approaches);

  @override
  late final ValueNotifier<String> time = ValueNotifier(_time);

  final OnConfigurationChanged _onConfigurationChanged;

  ApproachesModeConfiguration _configuration =
      const ApproachesModeConfiguration(
          approaches: 2, pushUps: 10, rest: Duration(minutes: 1));

  String get _pushUps =>
      S.of(context).countLabelWithParameter(_configuration.pushUps);

  String get _approaches =>
      S.of(context).countApproachesLabel(_configuration.approaches);

  String get _time => S.of(context).timeBetweenApproachesLabel(
      DateTime(0, 0, 0, 0, 0, _configuration.rest.inSeconds));

  @override
  String approachLabel(BuildContext context) {
    return S.of(context).approachLabel;
  }

  @override
  String approachesPart1Label(BuildContext context) {
    return S.of(context).approachesPart1Label;
  }

  @override
  String countApproachesLabel(BuildContext context) {
    return S.of(context).countApproachesLabel(2);
  }

  @override
  String countLabel(BuildContext context) {
    return S.of(context).countLabel(2);
  }

  @override
  String countLabelWithParameter(BuildContext context) {
    return S.of(context).countLabelWithParameter(10);
  }

  @override
  String fixedCountLabel(BuildContext context) {
    return S.of(context).fixedTimeLabel;
  }

  @override
  String restLabel(BuildContext context) {
    return S.of(context).restLabel;
  }

  @override
  String timeBetweenApproachesLabel(BuildContext context) {
    return S
        .of(context)
        .timeBetweenApproachesLabel(DateTime(0, 0, 0, 0, 0, 60));
  }

  @override
  void onCountMinusButtonPressed() {
    _changeConfiguration(_configuration.approaches, _configuration.pushUps - 1,
        _configuration.rest);
  }

  @override
  void onCountPlusButtonPressed() {
    _changeConfiguration(_configuration.approaches, _configuration.pushUps + 1,
        _configuration.rest);
  }

  @override
  void onApproachMinusButtonPressed() {
    _changeConfiguration(_configuration.approaches - 1, _configuration.pushUps,
        _configuration.rest);
  }

  @override
  void onApproachPlusButtonPressed() {
    _changeConfiguration(_configuration.approaches + 1, _configuration.pushUps,
        _configuration.rest);
  }

  @override
  void onTimeMinusButtonPressed() {
    _changeConfiguration(_configuration.approaches, _configuration.pushUps,
        _configuration.rest - const Duration(seconds: 1));
  }

  @override
  void onTimePlusButtonPressed() {
    _changeConfiguration(_configuration.approaches, _configuration.pushUps,
        _configuration.rest + const Duration(seconds: 1));
  }

  @override
  void dispose() {
    countPushUps.dispose();
  }

  void _changeConfiguration(int countApproaches, int count, Duration duration) {
    _configuration = ApproachesModeConfiguration(
        approaches: countApproaches, pushUps: count, rest: duration);
    countPushUps.value = _pushUps;
    approaches.value = _approaches;
    time.value = _time;
    _onConfigurationChanged(_configuration);
  }
}
