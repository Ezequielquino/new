import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_scaffold_base.dart';
import 'package:app_gestion_camaroneras/app/ui/views/home/home_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/home/widgets/body_content.dart';
import 'package:app_gestion_camaroneras/app/ui/views/home/widgets/user_profile.dart';
import 'package:app_gestion_camaroneras/app/ui/views/home/widgets/welcome.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => CustomScaffoldBase(
        appBarbackgroundColor: AppColors.kBase,
        iconThemeColor: Colors.white,
        drawer: const SizedBox(),
        action: const UserProfile(),
        body: Stack(
          children: const [
            Welcome(),
            BodyContent(),
          ],
        ),
      ),
    );
  }
}
