part of '../project_base.dart';

class Environment {
  static late IEnvConfig config;

  /// Init given environment from run command. [--dart-define=environment=development/production]
  static init() {
    const isEnvGiven = bool.hasEnvironment("environment");

    if (isEnvGiven) {
      const givenEnv = String.fromEnvironment("environment");
      switch (givenEnv) {
        case "development":
          config = DevelopmentEnv();
          break;

        case "production":
          config = DevelopmentEnv();
          break;
        default:
          throw "NO ENVIRONMENT FOUND";
      }
    } else {
      Get.log(
        "NO ENVIRONMENT GIVEN ||| STARTING FROM DEVELOPMENT",
        isError: true,
      );
      config = DevelopmentEnv();
    }
  }
}
