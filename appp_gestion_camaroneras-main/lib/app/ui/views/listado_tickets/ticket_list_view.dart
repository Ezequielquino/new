import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_scaffold_base.dart';
//import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/widgets/body_content.dart';
//import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/widgets/header_information.dart';
import 'package:app_gestion_camaroneras/app/ui/views/listado_tickets/ticket_list_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/listado_tickets/widgets/body_content.dart';
import 'package:app_gestion_camaroneras/app/ui/views/listado_tickets/widgets/header_body.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
//import 'package:app_gestion_camaroneras/app/ui/views/ticket/ticket_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TicketListView extends StatelessWidget {
  const TicketListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicketListController>(
      builder: (controller) => CustomScaffoldBase(
        action: Row(
          children: [
            const CircleAvatar(
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(width: 20.0),
            Padding(
              padding: const EdgeInsets.only(right: 95.0),
              child: Text(
                "Mis asignaciones",
                style: AppTextTheme(context).headlineMedium(),
              ),
            )
          ],
        ),
        body: Expanded(
          child: Stack(
            children: const [
              BContent(),
            ],
          ),
        ),
      ),
    );
  }
}
