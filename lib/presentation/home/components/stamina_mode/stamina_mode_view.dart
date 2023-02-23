import '../../../components/components.dart';
import 'stamina_mode_view_model.dart';

class StaminaModeView extends View<StaminaModeViewModel> {
  const StaminaModeView({Key? key})
      : super(staminaModeViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, StaminaModeViewModel viewModel) {
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