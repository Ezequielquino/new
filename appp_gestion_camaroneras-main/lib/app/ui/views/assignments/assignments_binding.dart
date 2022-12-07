import 'package:app_gestion_camaroneras/app/ui/views/assignments/assignments_controller.dart';
import 'package:get/get.dart';

class AssignmentsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssignmentsController());
  }
}
