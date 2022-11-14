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
  String get statisticsLabel ;

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

  final BuildContext _context;
  @override
  late final String statisticsLabel = S.of(_context).statisticsLabel;

  @override
  final PageController controller = PageController();

  @override
  void onNotificationButtonPressed() {}

  @override
  void onStartButtonPressed() {}

  @override
  void onStatisticsButtonPressed() {}

  @override
  void dispose() {}
}
