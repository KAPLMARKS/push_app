import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import '/presentation/presentation.dart';
import 'success.dart';

SuccessViewModel successViewModelFactory(BuildContext context) =>
    _SuccessViewModelImpl();

abstract class SuccessViewModel extends ViewModel<SuccessView> {
  ValueListenable<String> get countPushUps;

  ValueListenable<String> get time;
}

class _SuccessViewModelImpl extends SuccessViewModel {

  @override
  late final ValueNotifier<String> countPushUps = ValueNotifier(
    _countPushUps.toString(),
  );

  @override
  late final ValueNotifier<String> time = ValueNotifier(_timeFormat.format(
    DateTime(0, 0, 0, 0, 0, _time.inSeconds),
  ));

  final DateFormat _timeFormat = DateFormat('mm:ss');

  late final int _countPushUps = view.arguments.countPushUps;

  late final Duration _time = view.arguments.time;
}
