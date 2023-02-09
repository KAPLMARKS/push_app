

import '/presentation/presentation.dart';
import 'success.dart';

SuccessViewModel successViewModelFactory(BuildContext context) =>
    _SuccessViewModelImpl();

abstract class SuccessViewModel extends ViewModel<SuccessView> {
  int get countPushUps;

  String get time;

  double get pushUpsSpeed;
}

class _SuccessViewModelImpl extends SuccessViewModel {
  _SuccessViewModelImpl();

  @override
  final int countPushUps = 0;

  @override
  final double pushUpsSpeed = 0.00;

  @override
  final String time = "0:00";

}