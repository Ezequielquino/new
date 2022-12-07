import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderForm extends StatelessWidget {
  const HeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        Helpers.pathAssetImage("img_recover_password.png"),
      ),
    );
  }
}
