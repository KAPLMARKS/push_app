import '../../../components/components.dart';
import 'stamina_training_mode_view_model.dart';

class StaminaTrainingModeView extends View<StaminaTrainingModeViewModel> {
  const StaminaTrainingModeView({Key? key})
      : super(staminaTrainingModeViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, StaminaTrainingModeViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(viewModel.wantLabel(context)),
        Text(viewModel.pushUpFixedTimedLabel(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(viewModel.staminaLabel(context)),
          ],
        ),
      ],
    );
  }
}