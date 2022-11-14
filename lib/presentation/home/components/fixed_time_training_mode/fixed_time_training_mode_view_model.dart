import '../../../../generated/l10n.dart';
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

  final BuildContext _context;

  @override
  late final String wantLabel = S.of(_context).wantLabel;
  @override
  late final String pushUpFixedTimedLabel = S.of(_context).pushUpFixedTimedLabel;
  @override
  final String fixedTimeLabel = '30:20';
  @override
  late final String minutesLabel = S.of(_context).minutesLabel;

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
