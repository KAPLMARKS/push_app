import '../../../components/components.dart';

StaminaTrainingModeViewModel staminaTrainingModeViewModelFactory(
    BuildContext context) =>
    _StaminaTrainingModeViewModelImpl(context);
abstract class StaminaTrainingModeViewModel extends ViewModel {
  String get wantLabel;

  String get pushUpFixedTimedLabel;

  String get staminaLabel;
}

class _StaminaTrainingModeViewModelImpl implements StaminaTrainingModeViewModel {
  _StaminaTrainingModeViewModelImpl(this._context);

  @override
  final String wantLabel = 'ХОЧУ';
  @override
  final String pushUpFixedTimedLabel = 'ОТЖИМАТЬСЯ';

  @override
  final String staminaLabel = 'НА ВЫНОСЛИВОСТь';

  final BuildContext _context;

  @override
  void dispose() {
    // TODO: implement dispose
  }
}