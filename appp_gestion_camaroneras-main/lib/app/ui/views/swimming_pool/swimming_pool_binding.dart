import 'package:app_gestion_camaroneras/app/ui/views/swimming_pool/swimming_pool_controller.dart';
import 'package:get/get.dart';

class SwimmingPoolBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SwimmingPoolController());
  }
}
