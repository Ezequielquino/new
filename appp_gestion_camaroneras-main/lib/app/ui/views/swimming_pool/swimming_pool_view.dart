import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_scaffold_base.dart';
import 'package:app_gestion_camaroneras/app/ui/views/swimming_pool/swimming_pool_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/swimming_pool/widgets/body_content.dart';
import 'package:app_gestion_camaroneras/app/ui/views/swimming_pool/widgets/header_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwimmingPoolView extends StatelessWidget {
  const SwimmingPoolView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SwimmingPoolController>(
      builder: (controller) => CustomScaffoldBase(
        body: Stack(
          children: const [
            HeaderInformation(),
            BodyContent(),
            /*  ,
            (), */
          ],
        ),
      ),
    );
  }
}
