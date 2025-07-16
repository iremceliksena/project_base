part of '../../project_base.dart';

class Screen<T extends BaseController> extends ScreenBase<T> {
  const Screen({super.key, required super.body});

  @override
  Widget build(BuildContext context) {
    return Screen(body: body);
    //context.isPhone
  }
}
