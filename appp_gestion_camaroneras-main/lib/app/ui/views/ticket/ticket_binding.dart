import 'package:app_gestion_camaroneras/app/ui/views/ticket/ticket_controller.dart';
import 'package:get/get.dart';

class TicketBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketController());
  }
}
