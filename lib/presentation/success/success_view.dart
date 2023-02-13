import '../components/card.dart';
import '/presentation/presentation.dart';
import 'success.dart';

class SuccessView extends View<SuccessViewModel> {
  const SuccessView({Key? key}) : super(successViewModelFactory, key: key);

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
                          const Text(
                            '10',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
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
                            children: const [
                              Text('Время'),
                              Spacer(),
                              Text('Скорость'),
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