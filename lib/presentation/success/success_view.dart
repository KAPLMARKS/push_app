import '/presentation/presentation.dart';
import 'success.dart';

class SuccessView extends View<SuccessViewModel> {
  const SuccessView({Key? key}) : super(successViewModelFactory, key: key);

  @override
  Widget build(BuildContext context, SuccessViewModel viewModel) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 300,
                height: 300,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: CupertinoColors.systemGrey5.withOpacity(1),
                        spreadRadius: 8,
                        blurRadius: 8,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        width: 300,
                        height: 50,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: CupertinoColors.destructiveRed,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          child: Center(
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
                        width: 300,
                        height: 250,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: CupertinoColors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
