import 'package:app_gestion_camaroneras/app/ui/views/assignments_detail/assignments_detail_controller.dart';
import 'package:get/get.dart';

class AssignmentsDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssignmentsDetailController());
  }
}
