import 'package:provider/provider.dart';

import '../../../../data/data.dart';
import '../../../../generated/l10n.dart';
import '../../../components/components.dart';
import '../../home_view_model.dart';

StaminaModeViewModel staminaModeViewModelFactory(
  BuildContext context,
) =>
    _StaminaModeViewModelImpl(
      onConfigurationChanged: context.read(),
    );

abstract class StaminaModeViewModel extends ViewModel {
  String wantLabel(BuildContext context);

  String pushUpFixedTimedLabel(BuildContext context);

  String staminaLabel(BuildContext context);
}

class _StaminaModeViewModelImpl extends StaminaModeViewModel {
  _StaminaModeViewModelImpl({
    required OnConfigurationChanged
        onConfigurationChanged,
  }): _onConfigurationChanged = onConfigurationChanged {
    _onConfigurationChanged(_configuration);
  }

  final OnConfigurationChanged _onConfigurationChanged;

  final StaminaModeConfiguration _configuration =
      const StaminaModeConfiguration();

  @override
  String pushUpFixedTimedLabel(BuildContext context) {
    return S.of(context).pushUpFixedTimedLabel;
  }

  @override
  String staminaLabel(BuildContext context) {
    return S.of(context).staminaLabel;
  }

  @override
  String wantLabel(BuildContext context) {
    return S.of(context).wantLabel;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
