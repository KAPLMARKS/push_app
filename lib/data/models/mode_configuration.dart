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

abstract class ModeConfiguration {}

class FixedCountModeConfiguration implements ModeConfiguration {
  const FixedCountModeConfiguration(this.count);

  final int count;
}

class FixedTimeModeConfiguration implements ModeConfiguration {
  const FixedTimeModeConfiguration(this.duration);

  final Duration duration;
}

class StaminaModeConfiguration implements ModeConfiguration {
  const StaminaModeConfiguration();
}

class ApproachesModeConfiguration implements ModeConfiguration {
  const ApproachesModeConfiguration({
    required this.approaches,
    required this.pushUps,
    required this.rest,
  });

  final int approaches;

  final int pushUps;

  final Duration rest;
}
