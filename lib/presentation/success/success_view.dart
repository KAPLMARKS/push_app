import '../components/card.dart';
import '/presentation/presentation.dart';
import 'success.dart';

class SuccessViewArguments {
  SuccessViewArguments({required this.countPushUps, required this.time});

  final int countPushUps;
  final Duration time;
}

class SuccessView extends View<SuccessViewModel> {
  const SuccessView({
    Key? key,
    required this.arguments,
  }) : super(successViewModelFactory, key: key);

  final SuccessViewArguments arguments;

  @override
  Widget build(BuildContext context, SuccessViewModel viewModel) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Card(
            width: 300,
            height: 300,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: CupertinoTheme.of(context).primaryColor,
                    ),
                    child: const Center(
                      child: Text(
                        'Тренировка',
                        style: TextStyle(
                          color: CupertinoColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: Center(
                      child: Column(
                        children: [
                          ValueListenableBuilder<String>(
                            valueListenable: viewModel.countPushUps,
                            builder: (context, countPushUps, ___) {
                              return Text(
                                countPushUps,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              );
                            },
                          ),
                          const Text(
                            'ОТЖИМАНИЙ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              ValueListenableBuilder<String>(
                                valueListenable: viewModel.time,
                                builder: (context, time, ___) {
                                  return Text(
                                    time,
                                  );
                                },
                              ),
                              const Spacer(),
                              const Text('Скорость'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
