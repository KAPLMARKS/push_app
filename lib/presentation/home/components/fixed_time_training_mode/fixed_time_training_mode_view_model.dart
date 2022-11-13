import '../../../components/components.dart';

FixedTimeTrainingModeViewModel fixedTimeTrainingModeViewModelFactory(
    BuildContext context) =>
    _FixedTimeTrainingModeViewModelImpl(context);
abstract class FixedTimeTrainingModeViewModel extends ViewModel{
  String get wantLabel;

  String get pushUpFixedTimedLabel;

  String get fixedTimeLabel;

  String get minutesLabel;

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _FixedTimeTrainingModeViewModelImpl implements FixedTimeTrainingModeViewModel {
  _FixedTimeTrainingModeViewModelImpl(this._context);

  @override
  final String wantLabel = 'ХОЧУ';
  @override
  final String pushUpFixedTimedLabel = 'ОТЖИМАТЬСЯ';
  @override
  final String fixedTimeLabel = '30:20';
  @override
  final String minutesLabel = 'МИНУТ';

  final BuildContext _context;
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
