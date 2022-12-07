class AuthenticationExceptionModel {
  AuthenticationExceptionModel({
    this.code,
    this.message,
    this.data,
  });

  int? code;
  String? message;
  ExceptionData? data;

  factory AuthenticationExceptionModel.fromJson(Map<String, dynamic> json) =>
      AuthenticationExceptionModel(
        code: json["code"],
        message: json["message"],
        data: ExceptionData.fromJson(json["data"]),
      );
}

class ExceptionData {
  ExceptionData({
    this.name,
    this.debug,
    this.message,
  });

  String? name;
  String? debug;
  String? message;

  factory ExceptionData.fromJson(Map<String, dynamic> json) => ExceptionData(
        name: json["name"],
        debug: json["debug"],
        message: json["message"],
      );
}
