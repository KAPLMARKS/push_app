import '../../../components/components.dart';
import 'components.dart';

class FixedCountTrainingModeView extends View<FixedCountTrainingModeViewModel> {
  const FixedCountTrainingModeView({Key? key})
      : super(fixedCountTrainingModeViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, FixedCountTrainingModeViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(viewModel.wantLabel),
        Text(viewModel.pushUpFixedCountLabel),
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
            Text(viewModel.fixedCountLabel),
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
        Text(viewModel.countLabel),
      ],
    );
  }
}