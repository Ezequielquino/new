import 'package:app_gestion_camaroneras/app/ui/components/logos/app_logo.dart';
import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_layout_builder.dart';
import 'package:app_gestion_camaroneras/app/ui/views/recover_password/widgets/header_form.dart';
import 'package:app_gestion_camaroneras/app/ui/views/recover_password/widgets/recover_password_form.dart';
import 'package:flutter/material.dart';

class RecoverPasswordView extends StatelessWidget {
  const RecoverPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      header: HeaderForm(),
      body: RecoverPasswordForm(),
    );
  }
}
