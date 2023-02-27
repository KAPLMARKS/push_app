import 'package:flutter/foundation.dart';
import '/presentation/presentation.dart';
import 'success.dart';

SuccessViewModel successViewModelFactory(BuildContext context) =>
    _SuccessViewModelImpl();

abstract class SuccessViewModel extends ViewModel<SuccessView> {
  ValueListenable<String> get countPushUps;

  ValueListenable<String> get time;
}

class _SuccessViewModelImpl extends SuccessViewModel {
  _SuccessViewModelImpl();

  @override
  late final ValueNotifier<String> countPushUps = ValueNotifier(_countPushUps);

  late final String _countPushUps = view.countPushUps;

  @override
  late final ValueNotifier<String> time = ValueNotifier(_time);

  late final String _time = view.time;
}
