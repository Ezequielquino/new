import 'package:app_gestion_camaroneras/app/data/models/response/response_shrimps_farm_model.dart';
import 'package:get/get.dart';

class SwimmingPoolController extends GetxController {
  @override
  void onInit() {
    _initialize();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Instance
  ShrimpsFarm shrimpsFarm = ShrimpsFarm();
  //Variable

  //TextEditingController

  //Function
  void _initialize() async {
    shrimpsFarm = Get.arguments as ShrimpsFarm;
  }
}
