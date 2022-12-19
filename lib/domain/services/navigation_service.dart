import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '/presentation/presentation.dart';

final navigationServiceProvider = Provider<NavigationService>(
  create: (context) => _NavigationServiceImpl(),
);

abstract class NavigationService<T extends Object> {
  RouterConfig<T> get config;

  Future<dynamic>? openHome();
}

class _NavigationServiceImpl implements NavigationService<Object> {
  @override
  RouterConfig<Object> config = GoRouter(routes: [
    GoRoute(
      name: 'root',
      path: '/',
      pageBuilder: (context, state) {
        return const CupertinoPage(child: HomeView());
      },
    ),
    GoRoute(
      name: 'pushUpPage',
      path: '/pushUp',
      pageBuilder: (context, state) {
        return const CupertinoPage(child: PushUpsView());
      },
    ),
  ]);

  @override
  Future? openHome() {}
}
