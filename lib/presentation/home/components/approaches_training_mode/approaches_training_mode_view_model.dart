import '../../../../generated/l10n.dart';
import '../../../components/components.dart';

ApproachesTrainingModeViewModel approachesTrainingModeViewModelFactory(
        BuildContext context) =>
    _ApproachesTrainingModeViewModelImpl(context);

abstract class ApproachesTrainingModeViewModel extends ViewModel {
  String get fixedCountLabel;

  String get countLabel;

  String get approachesPart1Label;

  String get approachesPart2Label;

  String get countApproachesLabel;

  String get approachLabel;

  String get timeBetweenApproachesLabel;

  String get restLabel;

  void onMinusButtonPressed();

  void onPlusButtonPressed();
}

class _ApproachesTrainingModeViewModelImpl implements ApproachesTrainingModeViewModel {
  _ApproachesTrainingModeViewModelImpl(this._context);

  @override
  final String fixedCountLabel = '25';
  @override
  late final String countLabel = S.of(_context).countLabel;
  @override
  late final String approachesPart1Label = S.of(_context).approachesPart1Label;
  @override
  late final String approachesPart2Label = S.of(_context).approachesPart2Label;
  @override
  final String countApproachesLabel = '2';
  @override
  late final String approachLabel = S.of(_context).approachLabel;
  @override
  final String timeBetweenApproachesLabel = '1:00';
  @override
  late final String restLabel = S.of(_context).restLabel;

  final BuildContext _context;
  int _fixedCountCount = 5;

  @override
  void onMinusButtonPressed() {
    _fixedCountCount--;
  }

  @override
  void onPlusButtonPressed() {
    _fixedCountCount++;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
