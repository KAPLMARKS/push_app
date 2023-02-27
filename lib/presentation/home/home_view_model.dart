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
      : _navigationService = navigationService {
    controller.addListener(() {
      if(controller.page! % 1 == 0 && controller.page != _page) {
        _page = controller.page as int;
        print(controller.page);
      }
    });
  }

  final NavigationService<Object> _navigationService;

  int _page = 0;

  @override
  final String backgroundImageAsset = 'assets/images/push_ups.jpg';

  @override
  late final PageController controller = PageController(initialPage: _page);

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
