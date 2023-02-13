import 'package:provider/provider.dart';

import '../../../components/components.dart';
import '/data/models/mode_configuration.dart';
import '/generated/l10n.dart';

FixedTimeTrainingModeViewModel fixedTimeTrainingModeViewModelFactory(
        BuildContext context) =>
    _FixedTimeTrainingModeViewModelImpl(
      onConfigurationChanged: context.read(),
    );

abstract class FixedTimeTrainingModeViewModel extends ViewModel {
  String wantLabel(BuildContext context);

  String pushUpFixedTimedLabel(BuildContext context);

  String fixedTimeLabel(BuildContext context);

  String minutesLabel(BuildContext context);

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _FixedTimeTrainingModeViewModelImpl
    extends FixedTimeTrainingModeViewModel {
  _FixedTimeTrainingModeViewModelImpl({
    required void Function(ModeConfiguration configuration)
        onConfigurationChanged,
  }) : _onConfigurationChanged = onConfigurationChanged {
    _onConfigurationChanged(_configuration);
  }

  final void Function(ModeConfiguration configuration) _onConfigurationChanged;

  final FixedTimeModeConfiguration _configuration = const FixedTimeModeConfiguration(Duration(minutes: 5));

  @override
  String fixedTimeLabel(BuildContext context) {
    return S.of(context).fixedTimeLabel;
  }

  @override
  String minutesLabel(BuildContext context) {
    return S.of(context).minutesLabel;
  }

  @override
  String pushUpFixedTimedLabel(BuildContext context) {
    return S.of(context).pushUpFixedTimedLabel;
  }

  @override
  String wantLabel(BuildContext context) {
    return S.of(context).wantLabel;
  }

  int _fixedCountCount = 5;

  @override
  void onMinusButtonPressed() {
    _fixedCountCount--;
  }

  @override
  void onPlusButtonPressed() {
    _fixedCountCount++;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
