import 'package:app_gestion_camaroneras/app/data/models/request/request_authentication_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_authentication_model.dart';
import 'package:app_gestion_camaroneras/core/network/dio_client.dart';
import 'package:get/get.dart';

class AuthenticationProvider {
  final _dioClient = Get.find<DioClient>();

  Future<ResponseAuthenticationModel> postAuthentication(
    RequestAuthenticationModel requestAuthentication,
  ) async {
    final response = await _dioClient.post(
      path: "/api/v1/accounts/login",
      bodyRaw: requestAuthentication.toJson(),
    );
    return response["result"] != null
        ? ResponseAuthenticationModel.fromJson(response["result"])
        : ResponseAuthenticationModel.fromJson(response);
  }
}
