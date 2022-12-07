import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AssignmentsDetailController extends GetxController {
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

  //TextEditingController

  //Maps
  Completer<GoogleMapController> googleMapcontroller = Completer();

  //Function
  void _initialize() async {}
}
