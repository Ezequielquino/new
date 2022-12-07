import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_scaffold_base.dart';
import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/create_ticket_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/widgets/body_content.dart';
import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/widgets/header_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateTiketsView extends StatelessWidget {
  const CreateTiketsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateTiketsController>(
      builder: (controller) => CustomScaffoldBase(
        body: Stack(
          children: const [
            HeaderInformation(),
            BodyContent(),
          ],
        ),
      ),
      /*  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 320.0),
                child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    )))
          ],
        ),
        body: ListView(
          children: const [
            InfoTiket(),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Crear Nuevo Ticket",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30.0),
            CreateNewTicket()
          ],
        ),
      ), */
    );
  }
}
