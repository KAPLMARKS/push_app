import '/presentation/presentation.dart';
import 'components/home_components.dart';

class HomeView extends View<HomeViewModel> {
  const HomeView({Key? key}) : super(homeViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return CupertinoPageScaffold(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(viewModel.backgroundImageAsset),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(height: 32),
                _NotificationsButton(),
                SizedBox(height: 48),
                _TrainingsMode(),
                Spacer(),
                _StartButton(),
                Spacer(),
                _StatisticsButton(),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NotificationsButton extends ViewComponent<HomeViewModel> {
  const _NotificationsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return BlurredButton(
      borderRadius: BorderRadius.circular(16),
      onPressed: viewModel.onNotificationButtonPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            CupertinoIcons.alarm,
            size: 32,
          ),
        ],
      ),
    );
  }
}

class _TrainingsMode extends ViewComponent<HomeViewModel> {
  const _TrainingsMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Expanded(
      child: PageView(
        allowImplicitScrolling: true,
        physics: const AlwaysScrollableScrollPhysics(),
        controller: viewModel.controller,
        children: const [
          FixedCountTrainingModeView(),
          FixedTimeTrainingModeView(),
          StaminaTrainingModeView(),
          ApproachesTrainingModeView(),
          PlanTrainingModeView(),
        ],
      ),
    );
  }
}

class _StartButton extends ViewComponent<HomeViewModel> {
  const _StartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return SizedBox(
      height: 128,
      width: 128,
      child: CupertinoButton(
        onPressed: viewModel.onStartButtonPressed,
        padding: EdgeInsets.zero,
        borderRadius: BorderRadius.circular(120),
        color: CupertinoTheme.of(context).scaffoldBackgroundColor,
        child: Icon(
          CupertinoIcons.play_arrow_solid,
          size: 64,
          color: CupertinoTheme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class _StatisticsButton extends ViewComponent<HomeViewModel> {
  const _StatisticsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return BlurredButton(
      padding: const EdgeInsets.all(5),
      borderRadius: BorderRadius.circular(64),
      onPressed: viewModel.onStatisticsButtonPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            CupertinoIcons.chart_bar_fill,
            size: 16,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(viewModel.statisticsLabel(context)),
        ],
      ),
    );
  }
}
