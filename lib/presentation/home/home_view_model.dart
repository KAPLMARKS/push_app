import '/generated/l10n.dart';
import '/presentation/presentation.dart';


HomeViewModel homeViewModelFactory(BuildContext context) =>
    _HomeViewModelImpl();

abstract class HomeViewModel extends ViewModel {
  String get backgroundImageAsset;

  PageController get controller;

  String statisticsLabel(BuildContext context);

  void onNotificationButtonPressed();

  void onStartButtonPressed();

  void onStatisticsButtonPressed();
}

class _HomeViewModelImpl implements HomeViewModel {
  _HomeViewModelImpl();

  @override
  final String backgroundImageAsset = 'assets/images/push_ups.jpg';

  @override
  final PageController controller = PageController();

  @override
  String statisticsLabel(BuildContext context) {
    return S.of(context).statisticsLabel;
  }

  @override
  void onNotificationButtonPressed() {}

  @override
  void onStartButtonPressed() {}

  @override
  void onStatisticsButtonPressed() {}

  @override
  void dispose() {}
}
