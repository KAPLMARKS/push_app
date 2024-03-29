import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../data/data.dart';
import '/domain/services/navigation_service.dart';
import '/presentation/presentation.dart';

PushUpsViewModel pushUpsViewModelFactory(BuildContext context) =>
    _PushUpsViewModelImpl(navigationService: context.read());

abstract class PushUpsViewModel extends ViewModel<PushUpsView> {
  ValueListenable<String> get countPushUps;

  ValueListenable<String> get time;

  void onCloseButtonPressed();
}

class _PushUpsViewModelImpl extends PushUpsViewModel {
  _PushUpsViewModelImpl({required NavigationService<Object> navigationService})
      : _navigationService = navigationService {
    _stopwatchTimer = Timer.periodic(
      const Duration(seconds: 1),
      _stopwatchTimerCallback,
    );
    _pushUpsImitationTimer = Timer.periodic(
      const Duration(seconds: 2),
      _pushUpsImitationTimerCallback,
    );
  }

  final NavigationService<Object> _navigationService;

  @override
  late final ValueNotifier<String> countPushUps =
      ValueNotifier(_countPushUps.toString());

  late int _countPushUps = _configuration.mode == Mode.fixedCount
      ? (_configuration as FixedCountModeConfiguration).count
      : 0;

  final _player = AudioPlayer();

  @override
  late final ValueNotifier<String> time = ValueNotifier(_stopwatchFormat.format(
      _configuration.mode == Mode.fixedTime
          ? DateTime(0, 0, 0, 0, 0,
              (_configuration as FixedTimeModeConfiguration).duration.inSeconds)
          : DateTime(0)));

  final DateFormat _stopwatchFormat = DateFormat('mm:ss');

  late final Timer _stopwatchTimer;

  late final Timer _pushUpsImitationTimer;

  late final ModeConfiguration _configuration = view.configuration;

  @override
  void onCloseButtonPressed() {
    _onFinish();
  }

  void _stopwatchTimerCallback(Timer timer) {
    if (_configuration.mode == Mode.fixedTime) {
      final int seconds =
          (_configuration as FixedTimeModeConfiguration).duration.inSeconds -
              timer.tick;
      time.value = _stopwatchFormat.format(DateTime(0, 0, 0, 0, 0, seconds));
      if (seconds == 0) {
        _onFinish();
      }
    } else {
      time.value = _stopwatchFormat.format(DateTime(0, 0, 0, 0, 0, timer.tick));
    }
  }

  void _pushUpsImitationTimerCallback(Timer timer) {
    if (_configuration.mode == Mode.fixedCount) {
      _countPushUps--;
    } else {
      _countPushUps++;
    }
    countPushUps.value = _countPushUps.toString();
    _player.play(AssetSource('sounds/push_up_sound.mp3'));
    if (_configuration is FixedCountModeConfiguration && _countPushUps == 0) {
      _onFinish();
    }
  }

  void _onFinish() {
    _navigationService.openSuccessPage(
      _configuration.mode == Mode.fixedCount
          ? (_configuration as FixedCountModeConfiguration).count - _countPushUps
          : _countPushUps,
      Duration(seconds: _stopwatchTimer.tick),
    );
  }

  @override
  void dispose() {
    countPushUps.dispose();
    time.dispose();
    _stopwatchTimer.cancel();
    _pushUpsImitationTimer.cancel();
  }
}
