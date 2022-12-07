class ShrimpsFarmExceptionModel {
  ShrimpsFarmExceptionModel({
    this.success,
    this.message,
    this.responseCode,
    this.domain,
    this.apiKey,
    this.fields,
    this.objectName,
  });

  bool? success;
  String? message;
  int? responseCode;
  String? domain;
  String? apiKey;
  String? fields;
  String? objectName;

  factory ShrimpsFarmExceptionModel.fromJson(Map<String, dynamic> json) =>
      ShrimpsFarmExceptionModel(
        success: json["success"] ?? false,
        message: json["message"] ?? "",
        responseCode: json["responseCode"] ?? 0,
        domain: json["domain"] ?? "",
        apiKey: json["api_key"] ?? "",
        fields: json["fields"] ?? "",
        objectName: json["object_name"] ?? "",
      );
}
