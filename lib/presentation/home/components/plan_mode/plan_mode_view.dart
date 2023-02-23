import '../../../components/components.dart';
import 'plan_mode_view_model.dart';

class PlanModeView extends View<PlanModeViewModel> {
  const PlanModeView({Key? key})
      : super(planModeViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, PlanModeViewModel viewModel) {
    return Center(
      child: Text(viewModel.trainingProgramLabel(context)),
    );
  }
}