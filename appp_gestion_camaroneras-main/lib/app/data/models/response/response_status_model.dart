class ResponseStatusModel {
  ResponseStatusModel({
    this.data,
  });

  List<Status>? data;

  factory ResponseStatusModel.fromJson(Map<String, dynamic> json) =>
      ResponseStatusModel(
        data: List<Status>.from(
          json["data"].map(
            (x) => Status.fromJson(x),
          ),
        ),
      );
}

class Status {
  Status({
    this.id,
    this.name,
    this.sequence,
  });

  int? id;
  String? name;
  int? sequence;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        id: json["id"],
        name: json["name"],
        sequence: json["sequence"],
      );
}
