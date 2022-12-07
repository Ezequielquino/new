import 'package:app_gestion_camaroneras/app/ui/views/login/login_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket_detail/ticket_detail_controller.dart';
import 'package:get/get.dart';

class TicketDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketDetailController());
  }
}
