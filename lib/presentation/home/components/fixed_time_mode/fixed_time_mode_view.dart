import '/presentation/presentation.dart';

class FixedTimeModeView extends View<FixedTimeModeViewModel> {
  const FixedTimeModeView({Key? key})
      : super(fixedTimeModeViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, FixedTimeModeViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(viewModel.label(context)),
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
            ValueListenableBuilder<String>(
              valueListenable: viewModel.time,
              builder: (context, time, ___) => Text(time),
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
        Text(viewModel.description(context)),
      ],
    );
  }
}
