part of '../../project_base.dart';

class ProductionEnv extends IEnvConfig {
  ProductionEnv() {
    Get.log("Environment:::: PRODUCTION");
  }

  @override
  String get apiJsonPaleholder => "https://jsonplaceholder.typicode.com";
}
