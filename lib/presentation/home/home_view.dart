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

// class _FixedCountTrainingMode extends ViewComponent<HomeViewModel> {
//   const _FixedCountTrainingMode({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, HomeViewModel viewModel) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(viewModel.wantLabel),
//         Text(viewModel.pushUpFixedCountLabel),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             BlurredButton(
//               borderRadius: BorderRadius.circular(64),
//               padding: const EdgeInsets.all(5),
//               onPressed: viewModel.onMinusButtonPressed,
//               child: const Icon(
//                 CupertinoIcons.minus,
//                 size: 16,
//               ),
//             ),
//             Text(viewModel.fixedCountLabel),
//             BlurredButton(
//               borderRadius: BorderRadius.circular(64),
//               padding: const EdgeInsets.all(5),
//               onPressed: viewModel.onPlusButtonPressed,
//               child: const Icon(
//                 CupertinoIcons.plus,
//                 size: 16,
//               ),
//             ),
//           ],
//         ),
//         Text(viewModel.countLabel),
//       ],
//     );
//   }
// }

// class _FixedTimeTrainingMode extends ViewComponent<HomeViewModel> {
//   const _FixedTimeTrainingMode({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, HomeViewModel viewModel) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(viewModel.wantLabel),
//         Text(viewModel.pushUpFixedTimedLabel),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             BlurredButton(
//               borderRadius: BorderRadius.circular(64),
//               padding: const EdgeInsets.all(5),
//               onPressed: viewModel.onMinusButtonPressed,
//               child: const Icon(
//                 CupertinoIcons.minus,
//                 size: 16,
//               ),
//             ),
//             Text(viewModel.fixedTimeLabel),
//             BlurredButton(
//               borderRadius: BorderRadius.circular(64),
//               padding: const EdgeInsets.all(5),
//               onPressed: viewModel.onPlusButtonPressed,
//               child: const Icon(
//                 CupertinoIcons.plus,
//                 size: 16,
//               ),
//             ),
//           ],
//         ),
//         Text(viewModel.minutesLabel),
//       ],
//     );
//   }
// }

// class _StaminaTrainingMode extends ViewComponent<HomeViewModel> {
//   const _StaminaTrainingMode({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, HomeViewModel viewModel) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(viewModel.wantLabel),
//         Text(viewModel.pushUpFixedTimedLabel),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(viewModel.staminaLabel),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class _ApproachesTrainingMode extends ViewComponent<HomeViewModel> {
//   const _ApproachesTrainingMode({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, HomeViewModel viewModel) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(viewModel.approachesPart1Label),
//         Text(viewModel.approachesPart2Label),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               children: [
//                 Text(viewModel.fixedCountLabel),
//                 Text(viewModel.countLabel),
//                 Row(
//                   children: [
//                     BlurredButton(
//                       padding: const EdgeInsets.all(5),
//                       onPressed: viewModel.onMinusButtonPressed,
//                       child: const Icon(
//                         CupertinoIcons.minus,
//                         size: 16,
//                       ),
//                     ),
//                     BlurredButton(
//                       padding: const EdgeInsets.all(5),
//                       onPressed: viewModel.onPlusButtonPressed,
//                       child: const Icon(
//                         CupertinoIcons.plus,
//                         size: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(width: 16),
//             Column(
//               children: [
//                 Text(viewModel.countApproachesLabel),
//                 Text(viewModel.approachLabel),
//                 Row(
//                   children: [
//                     BlurredButton(
//                       padding: const EdgeInsets.all(5),
//                       onPressed: viewModel.onMinusButtonPressed,
//                       child: const Icon(
//                         CupertinoIcons.minus,
//                         size: 16,
//                       ),
//                     ),
//                     BlurredButton(
//                       padding: const EdgeInsets.all(5),
//                       onPressed: viewModel.onMinusButtonPressed,
//                       child: const Icon(
//                         CupertinoIcons.plus,
//                         size: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(width: 16),
//             Column(
//               children: [
//                 Text(viewModel.timeBetweenApproachesLabel),
//                 Text(viewModel.restLabel),
//                 Row(
//                   children: [
//                     BlurredButton(
//                       padding: const EdgeInsets.all(5),
//                       onPressed: viewModel.onMinusButtonPressed,
//                       child: const Icon(
//                         CupertinoIcons.minus,
//                         size: 16,
//                       ),
//                     ),
//                     BlurredButton(
//                       padding: const EdgeInsets.all(5),
//                       onPressed: viewModel.onPlusButtonPressed,
//                       child: const Icon(
//                         CupertinoIcons.plus,
//                         size: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

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
          Text(viewModel.statisticsLabel),
        ],
      ),
    );
  }
}
