import 'package:app_gestion_camaroneras/app/data/providers/authentication_provider.dart';
import 'package:app_gestion_camaroneras/app/data/providers/shrimps_farm_provider.dart';
import 'package:app_gestion_camaroneras/app/data/providers/ticket_provider.dart';
import 'package:app_gestion_camaroneras/app/data/repositories/authentication_repository.dart';
import 'package:app_gestion_camaroneras/app/data/repositories/shrimps_farm_repository.dart';
import 'package:app_gestion_camaroneras/app/data/repositories/ticket_repository.dart';
import 'package:app_gestion_camaroneras/core/network/dio_client.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void load() {
    //NETWORK
    Get.put<DioClient>(DioClient());

    //STORAGE
    Get.put<FlutterSecureStorage>(const FlutterSecureStorage());

    //PROVIDERS
    Get.put<AuthenticationProvider>(AuthenticationProvider());
    Get.put<ShrimpsFarmProvider>(ShrimpsFarmProvider());
    Get.put<TicketProvider>(TicketProvider());

    //REPOSITORIES
    Get.put<AuthenticationRepository>(AuthenticationRepository());
    Get.put<ShrimpsFarmRepository>(ShrimpsFarmRepository());
    Get.put<TicketRepository>(TicketRepository());
  }
}
