import 'package:provider/provider.dart';

import 'components.dart';

abstract class ViewModel {
  void dispose() {}
}

abstract class View<VM extends ViewModel> extends Widget {
  const View(
    this.viewModelFactory, {
    Key? key,
  }) : super(key: key);

  final VM Function(BuildContext context) viewModelFactory;

  @override
  Element createElement() => _ViewElement(this);

  Widget build(BuildContext context, VM viewModel);
}

class _ViewElement<VM extends ViewModel> extends ComponentElement {
  _ViewElement(View<VM> view) : super(view);

  @override
  Widget build() {
    return MultiProvider(
      providers: [
        Provider<VM>(
          create: (widget as View<VM>).viewModelFactory,
          dispose: (context, viewModel) => viewModel.dispose(),
        ),
      ],
      child: Builder(builder: (context) {
        return (widget as View<VM>).build(this, context.read());
      }),
    );
  }
}

abstract class ViewComponent<VM extends ViewModel> extends Widget {
  const ViewComponent({Key? key}) : super(key: key);

  @override
  Element createElement() => _ViewComponentElement(this);

  Widget build(BuildContext context, VM viewModel);
}

class _ViewComponentElement<VM extends ViewModel> extends ComponentElement {
  _ViewComponentElement(ViewComponent<VM> viewComponent) : super(viewComponent);

  @override
  Widget build() {
    return (widget as ViewComponent<VM>).build(this, read());
  }
}
