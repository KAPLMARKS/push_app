import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import '/presentation/presentation.dart';

PushUpsViewModel pushUpsViewModelFactory(BuildContext context) =>
    _PushUpsViewModelImpl();

abstract class PushUpsViewModel extends ViewModel {
  ValueListenable<String> get countPushUps;

  ValueListenable<String> get time;
}

class _PushUpsViewModelImpl implements PushUpsViewModel {
  _PushUpsViewModelImpl() {
    _stopwatchTimer = Timer.periodic(
      const Duration(seconds: 1),
      _stopwatchTimerCallback,
    );
    _pushUpsImitationTimer = Timer.periodic(
      const Duration(seconds: 2),
      _pushUpsImitationTimerCallback,
    );
  }

  @override
  late final ValueNotifier<String> countPushUps =
      ValueNotifier(_countPushUps.toString());

  int _countPushUps = 0;

  final _player = AudioPlayer();

  @override
  late final ValueNotifier<String> time =
      ValueNotifier(_stopwatchFormat.format(DateTime(0, 0, 0)));

  final DateFormat _stopwatchFormat = DateFormat('mm:ss');

  late final Timer _stopwatchTimer;

  late final Timer _pushUpsImitationTimer;

  void _stopwatchTimerCallback(Timer timer) {
    time.value = _stopwatchFormat.format(DateTime(0, 0, 0, 0, 0, timer.tick));
  }

  void _pushUpsImitationTimerCallback(Timer timer) {
    _countPushUps = _countPushUps + 1;
    countPushUps.value = _countPushUps.toString();
    _player.play(AssetSource('sounds/push_up_sound.mp3'));
  }


  @override
  void dispose() {
    _stopwatchTimer.cancel();
    _pushUpsImitationTimer.cancel();
  }
}
