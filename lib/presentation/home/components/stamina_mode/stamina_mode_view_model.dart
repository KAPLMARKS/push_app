import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

StaminaModeViewModel staminaModeViewModelFactory(
    BuildContext context) =>
    _StaminaModeViewModelImpl();
abstract class StaminaModeViewModel extends ViewModel {
  String wantLabel(BuildContext context);

  String pushUpFixedTimedLabel(BuildContext context);

  String staminaLabel(BuildContext context);
}

class _StaminaModeViewModelImpl extends StaminaModeViewModel {
  _StaminaModeViewModelImpl();

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