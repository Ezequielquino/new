import 'package:app_gestion_camaroneras/core/environment/env.dart';

class AppConfig {
  static void initialize() {
    Environment.type = ENV.DESA;
  }
}
