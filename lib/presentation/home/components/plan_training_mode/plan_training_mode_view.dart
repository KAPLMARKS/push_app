import '../../../components/components.dart';
import 'plan_training_mode_view_model.dart';

class PlanTrainingModeView extends View<PlanTrainingModeViewModel> {
  const PlanTrainingModeView({Key? key})
      : super(planTrainingModeViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, PlanTrainingModeViewModel viewModel) {
    return Center(
      child: Text(viewModel.trainingProgramLabel(context)),
    );
  }
}