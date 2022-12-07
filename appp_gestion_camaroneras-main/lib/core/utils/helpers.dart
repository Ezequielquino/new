import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class Helpers {
  static Future<dynamic> loadJsonAssets(String fileName) async {
    final response = await rootBundle.loadString("assets/json/$fileName");
    return json.decode(response);
  }

  static String pathAssetImage(String fileName) => "assets/images/$fileName";
  static String pathAssetIcons(String fileName) => "assets/icons/$fileName";
  static String pathAssetJson(String fileName) => "assets/json/$fileName";

  static String getFormatedDate(
    String? date, {
    String locale = "es",
    bool showTime = false,
  }) {
    if (date == null || date.isEmpty) return "-";

    var inputFormat = locale == "es"
        ? DateFormat('yyyy-MM-dd')
        : DateFormat('dd/MM/yyyy hh:mm');
    var inputDate = inputFormat.parse(date); // ?? DateTime.now().toString()
    var outputFormat = locale == "es"
        ? showTime == true
            ? DateFormat('dd/MM/yyyy hh:mm')
            : DateFormat('dd/MM/yyyy')
        : DateFormat('yyyy-MM-dd hh:mm');
    return outputFormat.format(inputDate);
  }
}
