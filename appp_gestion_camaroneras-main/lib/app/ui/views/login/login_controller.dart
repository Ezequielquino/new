import 'dart:convert';

import 'package:app_gestion_camaroneras/app/data/models/request/request_authentication_model.dart';
import 'package:app_gestion_camaroneras/app/data/repositories/authentication_repository.dart';
import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/app/services/storage_service.dart';
import 'package:app_gestion_camaroneras/core/utils/keys.dart';
import 'package:app_gestion_camaroneras/core/utils/popup_messages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
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
  final _authenticationRepository = Get.find<AuthenticationRepository>();

  //Variable
  RxBool isLoading = RxBool(false);
  RxBool isObscureText = RxBool(true);
  RxString errorTextEmail = RxString("");
  RxString errorTextPassword = RxString("");
  RxString existsSession = RxString("");

  //TextEditingController
  TextEditingController textCtrlCompania = TextEditingController();
  TextEditingController textCtrlEmail = TextEditingController();
  TextEditingController textCtrlPassword = TextEditingController();

  //Function
  void _initialize() async {
    textCtrlEmail.text = "app_movil";
    textCtrlPassword.text = "W8JcXHmObSwOCmeH";
  }

  void showPassword() {
    isObscureText.value = !isObscureText.value;
  }

  void doAuthentication() async {
    try {
      bool validateUser =
          existsSession.isNotEmpty ? true : textCtrlEmail.text.isNotEmpty;
      bool validatePassword = textCtrlPassword.text.isNotEmpty;
      errorTextEmail.value =
          validateUser ? "" : 'Ingrese su correo electrónico';
      errorTextPassword.value = validatePassword ? "" : 'Ingrese su contraseña';

      if (validateUser && validatePassword) {
        isLoading.value = true;
        final email = textCtrlEmail.text.trim();
        final password = textCtrlPassword.text.trim();

        final response = await _authenticationRepository.postAuthentication(
          RequestAuthenticationModel(
            login: textCtrlEmail.text.trim(),
            password: textCtrlPassword.text.trim(),
          ),
        );

        if (response.exception == null) {
          isLoading.value = false;
          await StorageService.set(
            key: Keys.kToken,
            value: response.accessToken ?? "",
          );
          await StorageService.set(
            key: Keys.kApiKey,
            value: response.apiKey ?? "",
          );
          Get.offNamed(RoutesName.HOME);
        } else {
          isLoading.value = false;
          PopUpMessages.show(
            "${response.exception?.data?.message}",
            title: "Error en autenticación",
          );
        }
      }
    } catch (error) {
      isLoading.value = false;
      PopUpMessages.show(error.toString());
    }
  }
}
