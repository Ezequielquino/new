import 'package:app_gestion_camaroneras/app/data/models/request/request_shrimps_farm_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_shrimps_farm_model.dart';
import 'package:app_gestion_camaroneras/app/data/providers/shrimps_farm_provider.dart';
import 'package:get/get.dart';

class ShrimpsFarmRepository {
  final _apiProvider = Get.find<ShrimpsFarmProvider>();

  Future<ResponseShrimpsFarmModel> getShrimpsFarm(
    RequestShrimpsFarmModel requestShrimpsFarm,
  ) =>
      _apiProvider.getShrimpsFarm(requestShrimpsFarm);
}
