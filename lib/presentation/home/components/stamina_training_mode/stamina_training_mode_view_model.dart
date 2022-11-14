import '../../../../generated/l10n.dart';
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

  final BuildContext _context;

  @override
  late final String wantLabel = S.of(_context).wantLabel;
  @override
  late final String pushUpFixedTimedLabel = S.of(_context).pushUpFixedTimedLabel;

  @override
  late final String staminaLabel = S.of(_context).staminaLabel;

  @override
  void dispose() {
    // TODO: implement dispose
  }
}