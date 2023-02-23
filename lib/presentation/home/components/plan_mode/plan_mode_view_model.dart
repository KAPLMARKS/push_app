import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

PlanModeViewModel planModeViewModelFactory(
    BuildContext context) =>
    _PlanModeViewModelImpl();
abstract class PlanModeViewModel extends ViewModel {
  String trainingProgramLabel(BuildContext context);
}

class _PlanModeViewModelImpl extends PlanModeViewModel {
  _PlanModeViewModelImpl();

  @override
  String trainingProgramLabel(BuildContext context) {
    return S.of(context).trainingProgramLabel;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}