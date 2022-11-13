import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

PlanTrainingModeViewModel planTrainingModeViewModelFactory(
    BuildContext context) =>
    _PlanTrainingModeViewModelImpl(context);
abstract class PlanTrainingModeViewModel extends ViewModel {
  String get trainingProgramLabel;
}

class _PlanTrainingModeViewModelImpl implements PlanTrainingModeViewModel {
  _PlanTrainingModeViewModelImpl(this._context);

  final BuildContext _context;

  @override
  late final String trainingProgramLabel = S.of(_context).trainingProgramLabel;

  @override
  void dispose() {
    // TODO: implement dispose
  }
}