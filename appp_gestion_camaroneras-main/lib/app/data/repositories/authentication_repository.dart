import 'package:app_gestion_camaroneras/app/data/models/request/request_authentication_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_authentication_model.dart';
import 'package:app_gestion_camaroneras/app/data/providers/authentication_provider.dart';
import 'package:get/get.dart';

class AuthenticationRepository {
  final _apiProvider = Get.find<AuthenticationProvider>();

  Future<ResponseAuthenticationModel> postAuthentication(
    RequestAuthenticationModel requestAuthentication,
  ) =>
      _apiProvider.postAuthentication(requestAuthentication);
}
