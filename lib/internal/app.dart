import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '/domain/services/services.dart';
import '/generated/l10n.dart';
import '/presentation/presentation.dart';

extension _NavigationServiceContext on BuildContext {
  NavigationService get navigationService => read();
}

class App extends StatelessWidget {
  const App({super.key});

  void run() => runApp(const App()
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      scrollBehavior: AppScrollBehavior(),
      localizationsDelegates: const [
        S.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: const HomeView(),
    );
  }
}
