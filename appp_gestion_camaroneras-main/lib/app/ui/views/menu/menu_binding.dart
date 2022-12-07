import 'package:app_gestion_camaroneras/app/ui/views/menu/menu_controller.dart';
import 'package:get/get.dart';

class MenuBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuController());
  }
}
