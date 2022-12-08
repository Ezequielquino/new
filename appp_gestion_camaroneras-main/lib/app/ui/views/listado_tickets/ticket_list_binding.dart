import 'package:app_gestion_camaroneras/app/ui/views/listado_tickets/ticket_list_controller.dart';
import 'package:get/get.dart';

class TicketListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketListController());
  }
}
