import '../../../components/components.dart';
import 'approaches_mode_view_model.dart';

class ApproachesModeView extends View<ApproachesModeViewModel> {
  const ApproachesModeView({Key? key})
      : super(approachesModeViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, ApproachesModeViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(viewModel.approachesPart1Label(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ValueListenableBuilder<String>(
                  valueListenable: viewModel.countPushUps,
                  builder: (context, pushUps, ___) => Text(pushUps),
                ),
                Row(
                  children: [
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onCountMinusButtonPressed,
                      child: const Icon(
                        CupertinoIcons.minus,
                        size: 16,
                      ),
                    ),
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onCountPlusButtonPressed,
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
                ValueListenableBuilder<String>(
                  valueListenable: viewModel.approaches,
                  builder: (context, approaches, ___) => Text(approaches),
                ),
                Text(viewModel.approachLabel(context)),
                Row(
                  children: [
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onApproachMinusButtonPressed,
                      child: const Icon(
                        CupertinoIcons.minus,
                        size: 16,
                      ),
                    ),
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onApproachPlusButtonPressed,
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
                ValueListenableBuilder<String>(
                  valueListenable: viewModel.time,
                  builder: (context, time, ___) => Text(time),
                ),
                Text(viewModel.restLabel(context)),
                Row(
                  children: [
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onTimeMinusButtonPressed,
                      child: const Icon(
                        CupertinoIcons.minus,
                        size: 16,
                      ),
                    ),
                    BlurredButton(
                      padding: const EdgeInsets.all(5),
                      onPressed: viewModel.onTimePlusButtonPressed,
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
