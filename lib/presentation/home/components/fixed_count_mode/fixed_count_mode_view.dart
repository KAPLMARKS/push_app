import '../../../components/components.dart';
import 'components.dart';

class FixedCountModeView extends View<FixedCountModeViewModel> {
  const FixedCountModeView({Key? key})
      : super(fixedCountModeViewModelFactory, key: key);

  @override
  Widget build(
      BuildContext context, FixedCountModeViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(viewModel.wantLabel(context)),
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
            Expanded(
              child: CupertinoTextField(
                controller: viewModel.controller,
              ),
            ),
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
        Text(viewModel.countLabel(context)),
      ],
    );
  }
}
