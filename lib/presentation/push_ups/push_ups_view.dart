import '/presentation/presentation.dart';

class PushUpsView extends View<PushUpsViewModel> {
  const PushUpsView({Key? key}) : super(pushUpsViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, PushUpsViewModel viewModel) {
    return const CupertinoPageScaffold(
        child: SizedBox());
  }

}