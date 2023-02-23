import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

ApproachesModeViewModel approachesModeViewModelFactory(
        BuildContext context) =>
    _ApproachesModeViewModelImpl();

abstract class ApproachesModeViewModel extends ViewModel {
  String countLabelWithParameter(BuildContext context);

  String fixedCountLabel(BuildContext context);

  String countLabel(BuildContext context);

  String approachesPart1Label(BuildContext context);

  String countApproachesLabel(BuildContext context);

  String approachLabel(BuildContext context);

  String timeBetweenApproachesLabel(BuildContext context);

  String restLabel(BuildContext context);

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _ApproachesModeViewModelImpl extends ApproachesModeViewModel {
  _ApproachesModeViewModelImpl();

  @override
  String approachLabel(BuildContext context) {
    return S.of(context).approachLabel;
  }

  @override
  String approachesPart1Label(BuildContext context) {
    return S.of(context).approachesPart1Label;
  }

  @override
  String countApproachesLabel(BuildContext context) {
    return S.of(context).countApproachesLabel;
  }

  @override
  String countLabel(BuildContext context) {
    return S.of(context).countLabel(2);
  }

  @override
  String countLabelWithParameter(BuildContext context) {
    return S.of(context).countLabelWithParameter(10);
  }

  @override
  String fixedCountLabel(BuildContext context) {
    return S.of(context).fixedTimeLabel;
  }

  @override
  String restLabel(BuildContext context) {
    return S.of(context).restLabel;
  }

  @override
  String timeBetweenApproachesLabel(BuildContext context) {
    return S.of(context).timeBetweenApproachesLabel;
  }

  int _fixedCountCount = 5;

  @override
  void onMinusButtonPressed() {
    _fixedCountCount--;
  }

  @override
  void onPlusButtonPressed() {
    _fixedCountCount++;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
