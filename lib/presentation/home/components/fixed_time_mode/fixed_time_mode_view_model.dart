import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

import '../../../components/components.dart';
import '../../home.dart';
import '/data/models/mode_configuration.dart';
import '/generated/l10n.dart';

FixedTimeModeViewModel fixedTimeModeViewModelFactory(
        BuildContext context) =>
    _FixedTimeModeViewModelImpl(
      onConfigurationChanged: context.read(),
    );

abstract class FixedTimeModeViewModel extends ViewModel {
  ValueListenable<String> get time;

  String label(BuildContext context);

  String description(BuildContext context);

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _FixedTimeModeViewModelImpl
    extends FixedTimeModeViewModel {
  _FixedTimeModeViewModelImpl({
    required OnConfigurationChanged
        onConfigurationChanged,
  }) : _onConfigurationChanged = onConfigurationChanged {
    _onConfigurationChanged(_configuration);
  }

  @override
  late final ValueNotifier<String> time = ValueNotifier(_time);

  final OnConfigurationChanged _onConfigurationChanged;

  FixedTimeModeConfiguration _configuration =
      const FixedTimeModeConfiguration(Duration(minutes: 5));

  String get _time => S.of(context).homeFixedTimeModeTime(
    DateTime(0, 0, 0, 0, 0, _configuration.duration.inSeconds),
  );

  @override
  String label(BuildContext context) {
    return S.of(context).homeFixedTimeModeLabel;
  }

  @override
  String description(BuildContext context) {
    return S.of(context).homeFixedTimeModeDescription;
  }

  @override
  void onMinusButtonPressed() {
    _changeConfiguration(_configuration.duration - const Duration(seconds: 1));
  }

  @override
  void onPlusButtonPressed() {
    _changeConfiguration(_configuration.duration + const Duration(seconds: 1));
  }

  @override
  void dispose() {
    time.dispose();
  }

  void _changeConfiguration(Duration duration) {
    _configuration = FixedTimeModeConfiguration(duration);
    time.value = _time;
    _onConfigurationChanged(_configuration);
  }

}
