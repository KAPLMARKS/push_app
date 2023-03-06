import 'package:flutter/material.dart';

import '/data/data.dart';
import '/presentation/presentation.dart';

class PushUpsView extends View<PushUpsViewModel> {
  const PushUpsView({Key? key, required this.configuration}) : super(pushUpsViewModelFactory, key: key);

  final ModeConfiguration configuration;

  @override
  Widget build(BuildContext context, PushUpsViewModel viewModel) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                _CloseButton(),
                Spacer(),
                Icon(CupertinoIcons.volume_up),
              ],
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      backgroundColor: CupertinoColors.systemBlue,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          CupertinoColors.systemRed),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ValueListenableBuilder<String>(
                        valueListenable: viewModel.countPushUps,
                        builder: (context, countPushUps, ___) {
                          return Text(
                            countPushUps,
                            textAlign: TextAlign.center,
                          );
                        }
                      ),
                      ValueListenableBuilder<String>(
                        valueListenable: viewModel.time,
                        builder: (context, time, ___) {
                          return Text(
                            time,
                            textAlign: TextAlign.center,
                          );
                        }
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CloseButton extends ViewComponent<PushUpsViewModel> {
  const _CloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, PushUpsViewModel viewModel) {
    return SizedBox(
      height: 16,
      width: 16,
      child: CupertinoButton(
        onPressed: viewModel.onCloseButtonPressed,
        padding: EdgeInsets.zero,
        borderRadius: BorderRadius.circular(120),
        color: CupertinoTheme.of(context).scaffoldBackgroundColor,
        child: Icon(
          CupertinoIcons.clear,
          size: 16,
          color: CupertinoTheme.of(context).primaryColor,
        ),
      ),
    );
  }
}
