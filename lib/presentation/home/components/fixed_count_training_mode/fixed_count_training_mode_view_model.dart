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

  @override
  final String wantLabel = 'ХОЧУ';
  @override
  final String pushUpFixedCountLabel = 'ОТЖАТЬСЯ';
  @override
  final String fixedCountLabel = '25';
  @override
  final String countLabel = 'РАЗ';

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
