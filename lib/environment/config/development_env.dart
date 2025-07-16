part of '../../project_base.dart';

class DevelopmentEnv extends IEnvConfig {
  DevelopmentEnv() {
    Get.log("Environment:::: DEVELOPMENT");
  }

  @override
  String get apiJsonPaleholder => "https://jsonplaceholder.typicode.com";
}
