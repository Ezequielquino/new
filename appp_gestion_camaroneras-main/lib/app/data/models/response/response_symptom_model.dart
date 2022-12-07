class ResponseSymptomModel {
  ResponseSymptomModel({
    this.data,
  });

  List<Symptom>? data;

  factory ResponseSymptomModel.fromJson(Map<String, dynamic> json) =>
      ResponseSymptomModel(
        data: List<Symptom>.from(
          json["data"].map(
            (x) => Symptom.fromJson(x),
          ),
        ),
      );
}

class Symptom {
  Symptom({
    this.id,
    this.name,
    this.code,
  });

  int? id;
  String? name;
  String? code;

  factory Symptom.fromJson(Map<String, dynamic> json) => Symptom(
        id: json["id"],
        name: json["name"],
        code: json["code"],
      );
}
