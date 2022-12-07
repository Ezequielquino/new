import 'package:app_gestion_camaroneras/app/ui/views/recover_password/recover_password_controller.dart';
import 'package:get/get.dart';

class RecoverPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecoverPasswordController());
  }
}
