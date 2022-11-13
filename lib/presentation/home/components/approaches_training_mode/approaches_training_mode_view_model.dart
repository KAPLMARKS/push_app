import '../../../components/components.dart';

ApproachesTrainingModeViewModel approachesTrainingModeViewModelFactory(
        BuildContext context) =>
    _ApproachesTrainingModeViewModelImpl(context);

abstract class ApproachesTrainingModeViewModel extends ViewModel {
  String get fixedCountLabel;

  String get countLabel;

  String get approachesPart1Label;

  String get approachesPart2Label;

  String get countApproachesLabel;

  String get approachLabel;

  String get timeBetweenApproachesLabel;

  String get restLabel;

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _ApproachesTrainingModeViewModelImpl implements ApproachesTrainingModeViewModel {
  _ApproachesTrainingModeViewModelImpl(this._context);

  @override
  final String fixedCountLabel = '25';
  @override
  final String countLabel = 'РАЗ';
  @override
  final String approachesPart1Label = 'В НЕСКОЛЬКО ПОДХОДОВ';
  @override
  final String approachesPart2Label = 'ПОДХОДОВ';
  @override
  final String countApproachesLabel = '2';
  @override
  final String approachLabel = 'ПОДХОДА';
  @override
  final String timeBetweenApproachesLabel = '1:00';
  @override
  final String restLabel = 'ОТДЫХ';

  final BuildContext _context;
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
