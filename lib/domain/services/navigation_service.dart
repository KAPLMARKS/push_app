import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../data/data.dart';
import '/presentation/success/success_view.dart';
import '/presentation/presentation.dart';

final navigationServiceProvider = Provider<NavigationService>(
  create: (context) => _NavigationServiceImpl(),
);

abstract class NavigationService<T extends Object> {
  RouterConfig<T> get config;

  void openPushUpPage(ModeConfiguration configuration);

  void openSuccessPage(int countPushUps, Duration duration);
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
            configuration: state.extra as ModeConfiguration,
          ),
        );
      },
    ),
    GoRoute(
      name: 'successPage',
      path: '/success',
      pageBuilder: (context, state) {
        return CupertinoPage(
          child: SuccessView(
            arguments: state.extra as SuccessViewArguments,
          ),
        );
      },
    ),
  ]);

  @override
  void openPushUpPage(ModeConfiguration configuration) {
    return config.go('/push-up', extra: configuration);
  }

  @override
  void openSuccessPage(int countPushUps, Duration time) {
    return config.pushReplacement(
      '/success',
      extra: SuccessViewArguments(countPushUps: countPushUps, time: time),
    );
  }
}
