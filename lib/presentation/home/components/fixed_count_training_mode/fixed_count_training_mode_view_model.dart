import 'package:provider/provider.dart';

import '/data/models/mode_configuration.dart';
import '/generated/l10n.dart';
import '/presentation/presentation.dart';

FixedCountTrainingModeViewModel fixedCountTrainingModeViewModelFactory(
  BuildContext context,
) =>
    _FixedCountTrainingModeViewModelImpl(
      onConfigurationChanged: context.read(),
    );

abstract class FixedCountTrainingModeViewModel extends ViewModel {
  String wantLabel(BuildContext context);

  String pushUpFixedCountLabel(BuildContext context);

  String fixedCountLabel(BuildContext context);

  String countLabel(BuildContext context);

  TextEditingController get controller;

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _FixedCountTrainingModeViewModelImpl
    extends FixedCountTrainingModeViewModel {
  _FixedCountTrainingModeViewModelImpl({
    required void Function(ModeConfiguration configuration) onConfigurationChanged,
  }) : _onConfigurationChanged = onConfigurationChanged {
    controller.addListener(() {
      _configuration = FixedCountModeConfiguration(int.parse(controller.text));
      _onConfigurationChanged(_configuration);
    });
    _onConfigurationChanged(_configuration);
  }

  @override
  late final TextEditingController controller =
      TextEditingController(text: _configuration.count.toString());

  final void Function(ModeConfiguration configuration) _onConfigurationChanged;

  FixedCountModeConfiguration _configuration = const FixedCountModeConfiguration(10);

  @override
  String countLabel(BuildContext context) {
    return S.of(context).countLabel(4);
  }

  @override
  String fixedCountLabel(BuildContext context) {
    return S.of(context).fixedTimeLabel;
  }

  @override
  String pushUpFixedCountLabel(BuildContext context) {
    return S.of(context).pushUpFixedCountLabel;
  }

  @override
  String wantLabel(BuildContext context) {
    return S.of(context).wantLabel;
  }

  @override
  void onMinusButtonPressed() {
    _configuration = FixedCountModeConfiguration(_configuration.count - 1);
    controller.text = (_configuration.count).toString();
    _onConfigurationChanged(_configuration);
  }

  @override
  void onPlusButtonPressed() {
    _configuration = FixedCountModeConfiguration(_configuration.count + 1);
    controller.text = (_configuration.count).toString();
    _onConfigurationChanged(_configuration);
  }

  @override
  void dispose() {
    controller.dispose();
  }
}
