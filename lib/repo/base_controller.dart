part of '../project_base.dart';

class BaseController extends GetxController with StateMixin {
  @override
  void onInit() {
    initController(); //futurize=>
    super.onInit();
  }

  Future<bool> initController() async {
    return true;
  }
}
