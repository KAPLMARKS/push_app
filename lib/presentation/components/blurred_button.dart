import 'dart:ui';

import 'components.dart';

class BlurredButton extends StatelessWidget {
  const BlurredButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.padding,
    this.borderRadius,
  }) : super(key: key);

  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Color foregroundColor = CupertinoColors.label.resolveFrom(context);
    return Stack(
      children: [
        CupertinoButton(
          color: CupertinoTheme.of(context)
              .scaffoldBackgroundColor
              .withOpacity(0.80),
          padding: padding,
          borderRadius: borderRadius,
          onPressed: onPressed,
          child: IconTheme(
            data: IconThemeData(color: foregroundColor),
            child: DefaultTextStyle(
              style: TextStyle(color: foregroundColor),
              child: child,
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        ),
      ],
    );
  }
}
