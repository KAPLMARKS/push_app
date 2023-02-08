import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '/presentation/presentation.dart';

final navigationServiceProvider = Provider<NavigationService>(
  create: (context) => _NavigationServiceImpl(),
);

abstract class NavigationService<T extends Object> {
  RouterConfig<T> get config;

  void openPushUpPage(configuration);

  void openSuccessPage(configuration);
}

class _NavigationServiceImpl implements NavigationService<Object> {
  @override
  GoRouter config = GoRouter(routes: [
    GoRoute(
      name: 'root',
      path: '/',
      pageBuilder: (context, state) {
        return const CupertinoPage(child: HomeView());
      },
    ),
    GoRoute(
      name: 'pushUpPage',
      path: '/push-up',
      pageBuilder: (context, state) {
        return CupertinoPage(
          child: PushUpsView(
            configuration: state.extra,
          ),
        );
      },
    ),
  ]);

  @override
  void openPushUpPage(configuration) {
    return config.go('/push-up', extra: configuration);
  }

  @override
  void openSuccessPage(configuration) {
    return config.pushReplacement('/success', extra: configuration);
  }

}
