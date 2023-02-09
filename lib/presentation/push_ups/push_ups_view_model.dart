import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '/domain/services/navigation_service.dart';
import '/presentation/presentation.dart';

PushUpsViewModel pushUpsViewModelFactory(BuildContext context) =>
    _PushUpsViewModelImpl(navigationService: context.read());

abstract class PushUpsViewModel extends ViewModel<PushUpsView> {
  ValueListenable<String> get countPushUps;

  ValueListenable<String> get time;
}

class _PushUpsViewModelImpl extends PushUpsViewModel {
  _PushUpsViewModelImpl({required NavigationService<Object> navigationService}) : _navigationService = navigationService {
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

  late int _countPushUps = _configuration;

  final _player = AudioPlayer();

  @override
  late final ValueNotifier<String> time =
      ValueNotifier(_stopwatchFormat.format(DateTime(0, 0, 0)));

  final DateFormat _stopwatchFormat = DateFormat('mm:ss');

  late final Timer _stopwatchTimer;

  late final Timer _pushUpsImitationTimer;

  dynamic get _configuration => view.configuration;

  void _stopwatchTimerCallback(Timer timer) {
    time.value = _stopwatchFormat.format(DateTime(0, 0, 0, 0, 0, timer.tick));
  }

  void _pushUpsImitationTimerCallback(Timer timer) {
    if(_countPushUps > 0) {
      _countPushUps--;
      countPushUps.value = _countPushUps.toString();
      _player.play(AssetSource('sounds/push_up_sound.mp3'));
    } else {
      _navigationService.openSuccessPage();
    }
  }


  @override
  void dispose() {
    _stopwatchTimer.cancel();
    _pushUpsImitationTimer.cancel();
  }
}
