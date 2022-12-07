import 'package:app_gestion_camaroneras/app/data/models/request/request_shrimps_farm_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_shrimps_farm_model.dart';
import 'package:app_gestion_camaroneras/app/data/repositories/shrimps_farm_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
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
  final _shrimpsFarmRepository = Get.find<ShrimpsFarmRepository>();

  //Variable
  RxList<ShrimpsFarm> shrimpsFarm = RxList([]);

  //TextEditingController

  //Function
  void _initialize() async {
    final response = await _shrimpsFarmRepository.getShrimpsFarm(
      RequestShrimpsFarmModel(clientId: "92"),
    );
    shrimpsFarm.value = response.data ?? [];
  }
}
