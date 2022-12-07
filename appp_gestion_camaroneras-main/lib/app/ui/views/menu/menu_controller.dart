import 'dart:convert';

import 'package:app_gestion_camaroneras/app/data/models/response/response_menu_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_shrimps_farm_model.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  @override
  void onInit() {
    _initialize();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Instance
  ShrimpsFarm shrimpsFarm = ShrimpsFarm();
  //Variable
  RxList<OptionModel> options = RxList([]);

  //TextEditingController

  //Function
  void _initialize() async {
    shrimpsFarm = Get.arguments as ShrimpsFarm;
    final json = await Helpers.loadJsonAssets("menu.json");
    final response = ResponseMenuModel.fromJson(json);
    options.value = response.options ?? [];
  }

  Color getOptionColor(int id) {
    switch (id) {
      case 1:
        return const Color.fromRGBO(239, 251, 247, 1.0);
      case 2:
        return const Color.fromRGBO(244, 242, 255, 1.0);
      case 3:
        return const Color.fromRGBO(234, 242, 255, 1.0);
      case 4:
        return const Color.fromRGBO(235, 250, 255, 1.0);
      case 5:
        return const Color.fromRGBO(254, 248, 250, 1.0);
      case 6:
        return const Color.fromRGBO(245, 250, 254, 1.0);
      default:
        return const Color.fromRGBO(239, 251, 247, 1.0);
    }
  }
}
