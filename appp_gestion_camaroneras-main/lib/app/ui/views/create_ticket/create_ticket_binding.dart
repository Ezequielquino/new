import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/create_ticket_controller.dart';
import 'package:get/get.dart';

class CrearTiketsViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateTiketsController());
  }
}
