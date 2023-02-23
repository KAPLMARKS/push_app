/* 1. Отжимание на заданное количество
      int - число отжиманий

   2. Отжимание на заданное время
      duration - время

   3. Отжимание на выносливость
      nothing

   4. Отжимание в несколько подходов
      int - количество подходов
      int - количество отжиманий в подходе
      duration - rest
*/


import 'models.dart';

abstract class ModeConfiguration {
  const ModeConfiguration(this.mode);
  final Mode mode;
}

class FixedCountModeConfiguration extends ModeConfiguration {
  const FixedCountModeConfiguration(this.count) : super(Mode.fixedCount);

  final int count;
}

class FixedTimeModeConfiguration extends ModeConfiguration {
  const FixedTimeModeConfiguration(this.duration) : super(Mode.fixedTime);

  final Duration duration;
}

class StaminaModeConfiguration extends ModeConfiguration {
  const StaminaModeConfiguration() : super(Mode.stamina);
}

class ApproachesModeConfiguration extends ModeConfiguration {
  const ApproachesModeConfiguration({
    required this.approaches,
    required this.pushUps,
    required this.rest,
  }) : super(Mode.approaches);

  final int approaches;

  final int pushUps;

  final Duration rest;
}
