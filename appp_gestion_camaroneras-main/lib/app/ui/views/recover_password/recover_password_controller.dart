import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecoverPasswordController extends GetxController {
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

  //Variable
  RxBool isLoading = RxBool(false);
  RxString errorTextEmail = RxString("");

  //TextEditingController
  TextEditingController textCtrlEmail = TextEditingController();

  //Function
  void _initialize() async {}

  void sendEmail() {}
}
