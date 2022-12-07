class RequestShrimpsFarmModel {
  RequestShrimpsFarmModel({
    required this.clientId,
  });

  String clientId;

  factory RequestShrimpsFarmModel.fromJson(Map<String, dynamic> json) =>
      RequestShrimpsFarmModel(
        clientId: json["client_id"],
      );
}
