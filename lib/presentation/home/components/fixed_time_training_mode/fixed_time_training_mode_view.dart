import '../../../components/components.dart';
import 'fixed_time_training_mode_view_model.dart';

class FixedTimeTrainingModeView extends View<FixedTimeTrainingModeViewModel> {
  const FixedTimeTrainingModeView({Key? key})
      : super(fixedTimeTrainingModeViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, FixedTimeTrainingModeViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(viewModel.wantLabel),
        Text(viewModel.pushUpFixedTimedLabel),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlurredButton(
              borderRadius: BorderRadius.circular(64),
              padding: const EdgeInsets.all(5),
              onPressed: viewModel.onMinusButtonPressed,
              child: const Icon(
                CupertinoIcons.minus,
                size: 16,
              ),
            ),
            Text(viewModel.fixedTimeLabel),
            BlurredButton(
              borderRadius: BorderRadius.circular(64),
              padding: const EdgeInsets.all(5),
              onPressed: viewModel.onPlusButtonPressed,
              child: const Icon(
                CupertinoIcons.plus,
                size: 16,
              ),
            ),
          ],
        ),
        Text(viewModel.minutesLabel),
      ],
    );
  }
}