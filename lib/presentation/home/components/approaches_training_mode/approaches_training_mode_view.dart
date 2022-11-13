import '../../../components/components.dart';
import 'approaches_training_mode_view_model.dart';

class ApproachesTrainingModeView extends View<ApproachesTrainingModeViewModel> {
  const ApproachesTrainingModeView({Key? key})
      : super(approachesTrainingModeViewModelFactory, key: key);

  @override
  Widget build(
      BuildContext context, ApproachesTrainingModeViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(viewModel.approachesPart1Label),
        Text(viewModel.approachesPart2Label),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(viewModel.fixedCountLabel),
                Text(viewModel.countLabel),
                Row(
                  children: [
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onMinusButtonPressed,
                      child: const Icon(
                        CupertinoIcons.minus,
                        size: 16,
                      ),
                    ),
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onPlusButtonPressed,
                      child: const Icon(
                        CupertinoIcons.plus,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                Text(viewModel.countApproachesLabel),
                Text(viewModel.approachLabel),
                Row(
                  children: [
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onMinusButtonPressed,
                      child: const Icon(
                        CupertinoIcons.minus,
                        size: 16,
                      ),
                    ),
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onMinusButtonPressed,
                      child: const Icon(
                        CupertinoIcons.plus,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                Text(viewModel.timeBetweenApproachesLabel),
                Text(viewModel.restLabel),
                Row(
                  children: [
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onMinusButtonPressed,
                      child: const Icon(
                        CupertinoIcons.minus,
                        size: 16,
                      ),
                    ),
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onPlusButtonPressed,
                      child: const Icon(
                        CupertinoIcons.plus,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
