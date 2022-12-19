import '/presentation/presentation.dart';

PushUpsViewModel pushUpsViewModelFactory(BuildContext context) =>
  _PushUpsViewModelImpl();

abstract class PushUpsViewModel extends ViewModel {

}

class _PushUpsViewModelImpl implements PushUpsViewModel {
  @override
  void dispose() {
    // TODO: implement dispose
  }
}