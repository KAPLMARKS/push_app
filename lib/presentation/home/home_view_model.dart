import 'package:provider/provider.dart';

import '/data/data.dart';
import '/domain/domain.dart';
import '/generated/l10n.dart';
import '/presentation/presentation.dart';

typedef OnConfigurationChanged = void Function(ModeConfiguration configuration);

HomeViewModel homeViewModelFactory(BuildContext context) =>
    _HomeViewModelImpl(navigationService: context.read());

abstract class HomeViewModel extends ViewModel {
  String get backgroundImageAsset;

  PageController get controller;

  String statisticsLabel(BuildContext context);

  void onNotificationButtonPressed();

  void onStartButtonPressed();

  void onStatisticsButtonPressed();

  void onConfigurationChanged(ModeConfiguration configuration);
}

class _HomeViewModelImpl extends HomeViewModel {
  _HomeViewModelImpl({required NavigationService<Object> navigationService})
      : _navigationService = navigationService;

  final NavigationService<Object> _navigationService;

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
  void onStartButtonPressed() {
    _navigationService.openPushUpPage(_configuration);
  }

  late ModeConfiguration _configuration;

  @override
  void onStatisticsButtonPressed() {}

  @override
  void onConfigurationChanged(configuration) {
    _configuration = configuration;
  }

  @override
  void dispose() {}
}
