import '/generated/l10n.dart';
import '/presentation/presentation.dart';


HomeViewModel homeViewModelFactory(BuildContext context) =>
    _HomeViewModelImpl(context);

abstract class HomeViewModel extends ViewModel {
  String get backgroundImageAsset;

  // String get trainingProgramLabel;
  //
  // String get wantLabel;
  //
  // String get pushUpFixedCountLabel;
  //
  // String get fixedCountLabel;
  //
  // String get countLabel;
  //
  // String get pushUpFixedTimedLabel;
  //
  // String get fixedTimeLabel;
  //
  // String get minutesLabel;

  // String get approachesPart1Label;

  // String get approachesPart2Label;

  // String get countApproachesLabel;

  // String get approachLabel;

  // String get timeBetweenApproachesLabel;

  // String get restLabel;

  // String get staminaLabel;
  //
  String get statisticsLabel;

  PageController get controller;

  void onNotificationButtonPressed();

  // void onMinusButtonPressed();
  //
  // void onPlusButtonPressed();

  void onStartButtonPressed();

  void onStatisticsButtonPressed();
}

class _HomeViewModelImpl implements HomeViewModel {
  _HomeViewModelImpl(this._context);

  @override
  final String backgroundImageAsset = 'assets/images/push_ups.jpg';
  // @override
  // late final String trainingProgramLabel = S.of(_context).trainingProgramLabel;
  // @override
  // final String wantLabel = 'ХОЧУ';
  // @override
  // final String pushUpFixedCountLabel = 'ОТЖАТЬСЯ';
  // @override
  // final String fixedCountLabel = '25';
  // @override
  // final String countLabel = 'РАЗ';
  // @override
  // final String pushUpFixedTimedLabel = 'ОТЖИМАТЬСЯ';
  // @override
  // final String fixedTimeLabel = '30:20';
  // @override
  // final String minutesLabel = 'МИНУТ';
  // @override
  // final String approachesPart1Label = 'В НЕСКОЛЬКО ПОДХОДОВ';
  // @override
  // final String approachesPart2Label = 'ПОДХОДОВ';
  // @override
  // final String countApproachesLabel = '2';
  // @override
  // final String approachLabel = 'ПОДХОДА';
  // @override
  // final String timeBetweenApproachesLabel = '1:00';
  // @override
  // final String restLabel = 'ОТДЫХ';
  // @override
  // final String staminaLabel = 'НА ВЫНОСЛИВОСТь';
  @override
  final String statisticsLabel = 'СТАТИСТИКА';

  @override
  final PageController controller = PageController();

  final BuildContext _context;
  // int _fixedCountCount = 5;

  @override
  void onNotificationButtonPressed() {}

  // @override
  // void onMinusButtonPressed() {
  //   _fixedCountCount--;
  // }
  //
  // @override
  // void onPlusButtonPressed() {
  //   _fixedCountCount++;
  // }

  @override
  void onStartButtonPressed() {}

  @override
  void onStatisticsButtonPressed() {}

  @override
  void dispose() {}
}
