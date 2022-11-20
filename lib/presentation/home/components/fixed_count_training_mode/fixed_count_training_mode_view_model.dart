import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

FixedCountTrainingModeViewModel fixedCountTrainingModeViewModelFactory(
        BuildContext context) =>
    _FixedCountTrainingModeViewModelImpl();

abstract class FixedCountTrainingModeViewModel extends ViewModel {
  String wantLabel(BuildContext context);

  String pushUpFixedCountLabel(BuildContext context);

  String fixedCountLabel(BuildContext context);

  String countLabel(BuildContext context);

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _FixedCountTrainingModeViewModelImpl implements FixedCountTrainingModeViewModel {
  _FixedCountTrainingModeViewModelImpl();

  @override
  String countLabel(BuildContext context) {
    return S.of(context).countLabel;
  }

  @override
  String fixedCountLabel(BuildContext context) {
    return S.of(context).fixedTimeLabel;
  }

  @override
  String pushUpFixedCountLabel(BuildContext context) {
    return S.of(context).pushUpFixedCountLabel;
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
