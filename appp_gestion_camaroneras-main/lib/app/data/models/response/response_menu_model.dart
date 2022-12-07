class ResponseMenuModel {
  ResponseMenuModel({
    this.nameApp = "",
    this.options,
  });

  late String nameApp;
  late String profileName;
  List<OptionModel>? options;

  factory ResponseMenuModel.fromJson(Map<String, dynamic> json) =>
      ResponseMenuModel(
        nameApp: json["nameApp"],
        options: List<OptionModel>.from(
            json["options"].map((x) => OptionModel.fromJson(x))),
      );
}

class OptionModel {
  OptionModel({
    this.id = 0,
    this.menu = "",
    this.displayMenuName = "",
    this.icon = "",
    this.route = "",
  });
  late int id;
  late String menu;
  late String displayMenuName;
  late String icon;
  late String route;

  factory OptionModel.fromJson(Map<String, dynamic> json) => OptionModel(
        id: json["id"],
        menu: json["menu"],
        displayMenuName: json["displayMenuName"],
        icon: json["icon"],
        route: json["route"],
      );
}
