import 'dart:ui';

import 'components.dart';

class AppScrollBehavior extends CupertinoScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
