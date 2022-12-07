import 'package:app_gestion_camaroneras/app/ui/components/buttons/btn_float.dart';
import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_scaffold_base.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket_detail/ticket_detail_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket_detail/widgets/header_information.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket_detail/widgets/tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TicketDetailView extends StatelessWidget {
  const TicketDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicketDetailController>(
      builder: (controller) => CustomScaffoldBase(
        action: const BtnFloat(),
        body: Column(
          children: const [
            HeaderInformation(),
            Expanded(
              child: Tabs(),
            ),
          ],
        ),
      ),
    );
  }
}
