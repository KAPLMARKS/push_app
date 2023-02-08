import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

PlanTrainingModeViewModel planTrainingModeViewModelFactory(
    BuildContext context) =>
    _PlanTrainingModeViewModelImpl();
abstract class PlanTrainingModeViewModel extends ViewModel {
  String trainingProgramLabel(BuildContext context);
}

class _PlanTrainingModeViewModelImpl extends PlanTrainingModeViewModel {
  _PlanTrainingModeViewModelImpl();

  @override
  String trainingProgramLabel(BuildContext context) {
    return S.of(context).trainingProgramLabel;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}