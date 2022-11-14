import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

FixedCountTrainingModeViewModel fixedCountTrainingModeViewModelFactory(
        BuildContext context) =>
    _FixedCountTrainingModeViewModelImpl(context);

abstract class FixedCountTrainingModeViewModel extends ViewModel {
  String get wantLabel;

  String get pushUpFixedCountLabel;

  String get fixedCountLabel;

  String get countLabel;

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _FixedCountTrainingModeViewModelImpl implements FixedCountTrainingModeViewModel {
  _FixedCountTrainingModeViewModelImpl(this._context);

  final BuildContext _context;

  @override
  late final String wantLabel = S.of(_context).wantLabel;
  @override
  late final String pushUpFixedCountLabel = S.of(_context).pushUpFixedTimedLabel;
  @override
  final String fixedCountLabel = '25';
  @override
  late final String countLabel = S.of(_context).countLabel;

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
