import 'package:provider/provider.dart';

import '/presentation/presentation.dart';

final navigationServiceProvider = Provider<NavigationService>(
  create: (context) => _NavigationServiceImpl(),
);

abstract class NavigationService {
  GlobalKey<NavigatorState> get navigatorKey;
  String get initialRoute;

  Route? onGenerateRoute(RouteSettings settings);

  Future<dynamic>? openHome([bool replace = true]);
}

class _NavigationServiceImpl implements NavigationService {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  String get initialRoute => '/';

  @override
  Route? onGenerateRoute(RouteSettings settings) {
    if(settings.name == initialRoute) {
      return CupertinoPageRoute(
        builder: (context) => const HomeView(),
      );
    }

    return null;
  }

  @override
  Future? openHome([bool replace = true]) {
    if(replace) {
      return navigatorKey.currentState?.pushReplacementNamed('/');
    } else {
      return navigatorKey.currentState?.pushNamed('/');
    }
  }

}
