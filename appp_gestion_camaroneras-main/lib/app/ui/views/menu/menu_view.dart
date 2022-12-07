import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_scaffold_base.dart';
import 'package:app_gestion_camaroneras/app/ui/views/menu/menu_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/menu/widgets/body_content.dart';
import 'package:app_gestion_camaroneras/app/ui/views/menu/widgets/header_information.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenuController>(
      builder: (controller) => CustomScaffoldBase(
        body: Stack(
          children: const [
            HeaderInformation(),
            BodyContent(),
          ],
        ),
      ),
    );
  }
}
