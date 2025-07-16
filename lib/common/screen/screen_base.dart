part of '../../project_base.dart';

abstract class ScreenBase<T extends BaseController> extends StatelessWidget {
  final Widget Function(BuildContext, T) body;

  const ScreenBase({super.key, required this.body});

  @override
  Widget build(BuildContext context);
}
