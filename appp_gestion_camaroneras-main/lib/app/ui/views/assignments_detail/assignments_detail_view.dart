import 'package:app_gestion_camaroneras/app/ui/views/assignments_detail/assignments_detail_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/assignments_detail/widgets/google_maps.dart';
import 'package:app_gestion_camaroneras/app/ui/views/assignments_detail/widgets/information_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssignmentsDetailView extends StatelessWidget {
  const AssignmentsDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AssignmentsDetailController>(
      builder: (controller) => Scaffold(
        body: Stack(
          children: const [
            GoogleMaps(),
            InformationDetail(),
          ],
        ),
        /* body: Column(
          children: [],
        ), */
      ),
    );
  }
}
