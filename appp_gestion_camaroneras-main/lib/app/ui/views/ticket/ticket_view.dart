import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/app/ui/components/buttons/btn_prymary.dart';
import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_scaffold_base.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/ticket_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/body_content.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/header_information.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/tickets.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicketController>(
      builder: (controller) => CustomScaffoldBase(
        body: Stack(
          children: const [
            HeaderInformation(),
            BodyContent(),
          ],
        ),
        floatingActionButton: BtnPrimary(
          isMinWidth: true,
          text: "Crear ticket",
          onPressed: () => Get.toNamed(
            RoutesName.SWIMMINGPOOL,
            arguments: controller.shrimpsFarm,
          ),
        ),
      ),
    );
  }
}
