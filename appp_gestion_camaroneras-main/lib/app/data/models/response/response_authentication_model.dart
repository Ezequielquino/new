import 'package:app_gestion_camaroneras/app/data/models/response/exceptions/authentication_exception_model.dart';

class ResponseAuthenticationModel {
  ResponseAuthenticationModel({
    this.accessToken,
    this.expireIn,
    this.tokenType,
    this.refreshToken,
    this.uid,
    this.apiKey,
    this.exception,
  });

  String? accessToken;
  int? expireIn;
  String? tokenType;
  String? refreshToken;
  int? uid;
  String? apiKey;
  AuthenticationExceptionModel? exception;

  factory ResponseAuthenticationModel.fromJson(Map<String, dynamic> json) =>
      ResponseAuthenticationModel(
        exception: json["error"] != null
            ? AuthenticationExceptionModel.fromJson(json["error"])
            : null,
        accessToken: json["access_token"] ?? "",
        expireIn: json["expire_in"] ?? 0,
        tokenType: json["token_type"] ?? "",
        refreshToken: json["refresh_token"] ?? "",
        uid: json["uid"] ?? 0,
        apiKey: json["api_key"] ?? "",
      );
}
