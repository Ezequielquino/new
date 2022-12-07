import 'package:app_gestion_camaroneras/app/ui/components/logos/app_logo.dart';
import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_layout_builder.dart';
import 'package:app_gestion_camaroneras/app/ui/views/login/login_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/login/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      header: AppLogo(logoSize: LogoSize.small),
      body: LoginForm(),
    );
  }
}
