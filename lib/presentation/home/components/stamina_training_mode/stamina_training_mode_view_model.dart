import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

StaminaTrainingModeViewModel staminaTrainingModeViewModelFactory(
    BuildContext context) =>
    _StaminaTrainingModeViewModelImpl();
abstract class StaminaTrainingModeViewModel extends ViewModel {
  String wantLabel(BuildContext context);

  String pushUpFixedTimedLabel(BuildContext context);

  String staminaLabel(BuildContext context);
}

class _StaminaTrainingModeViewModelImpl extends StaminaTrainingModeViewModel {
  _StaminaTrainingModeViewModelImpl();

  @override
  String pushUpFixedTimedLabel(BuildContext context) {
    return S.of(context).pushUpFixedTimedLabel;
  }

  @override
  String staminaLabel(BuildContext context) {
    return S.of(context).staminaLabel;
  }

  @override
  String wantLabel(BuildContext context) {
    return S.of(context).wantLabel;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}