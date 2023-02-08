import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

FixedTimeTrainingModeViewModel fixedTimeTrainingModeViewModelFactory(
    BuildContext context) =>
    _FixedTimeTrainingModeViewModelImpl();
abstract class FixedTimeTrainingModeViewModel extends ViewModel{
  String wantLabel(BuildContext context);

  String pushUpFixedTimedLabel(BuildContext context);

  String fixedTimeLabel(BuildContext context);

  String minutesLabel(BuildContext context);

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _FixedTimeTrainingModeViewModelImpl extends FixedTimeTrainingModeViewModel {
  _FixedTimeTrainingModeViewModelImpl();

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
