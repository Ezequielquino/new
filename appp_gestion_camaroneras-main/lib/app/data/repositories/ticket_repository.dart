import 'package:app_gestion_camaroneras/app/data/models/response/response_status_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_symptom_model.dart';
import 'package:app_gestion_camaroneras/app/data/providers/ticket_provider.dart';
import 'package:get/get.dart';

class TicketRepository {
  final _apiProvider = Get.find<TicketProvider>();

  Future<ResponseSymptomModel> getSymptom() => _apiProvider.getSymptom();
  Future<ResponseStatusModel> getStatus() => _apiProvider.getStatus();
}
