import 'components.dart';

class Card extends StatelessWidget {
  const Card({
    Key? key,
    this.width,
    this.height,
    required this.child,
  }) : super(key: key);

  final double? width;

  final double? height;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(16));
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: CupertinoTheme.of(context).scaffoldBackgroundColor,
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.systemGrey5.withOpacity(1),
              spreadRadius: 8,
              blurRadius: 8,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: child,
        ),
      ),
    );
  }
}
