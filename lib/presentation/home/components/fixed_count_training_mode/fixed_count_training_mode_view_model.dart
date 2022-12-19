import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

FixedCountTrainingModeViewModel fixedCountTrainingModeViewModelFactory(
        BuildContext context) =>
    _FixedCountTrainingModeViewModelImpl();

abstract class FixedCountTrainingModeViewModel extends ViewModel {
  String wantLabel(BuildContext context);

  String pushUpFixedCountLabel(BuildContext context);

  String fixedCountLabel(BuildContext context);

  String countLabel(BuildContext context);

  TextEditingController get controller;

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _FixedCountTrainingModeViewModelImpl
    implements FixedCountTrainingModeViewModel {
  _FixedCountTrainingModeViewModelImpl() {
    controller.addListener(() {
      _fixedCount = int.parse(controller.text);
    });
  }

  @override
  String countLabel(BuildContext context) {
    return S.of(context).countLabel(4);
  }

  @override
  String fixedCountLabel(BuildContext context) {
    return S.of(context).fixedTimeLabel;
  }

  @override
  String pushUpFixedCountLabel(BuildContext context) {
    return S.of(context).pushUpFixedCountLabel;
  }

  @override
  String wantLabel(BuildContext context) {
    return S.of(context).wantLabel;
  }

  @override
  late TextEditingController controller =
      TextEditingController(text: _fixedCount.toString());

  int _fixedCount = 10;

  @override
  void onMinusButtonPressed() => controller.text = (_fixedCount--).toString();

  @override
  void onPlusButtonPressed() => controller.text = (_fixedCount++).toString();

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
