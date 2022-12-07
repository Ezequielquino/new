import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constant.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.text,
    /* required this.path*/
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 40.0,
        width: 110.0,
        decoration: BoxDecoration(
            border: Border.all(
                color: AppColors.kBase, width: 2, style: BorderStyle.solid),
            color:Colors.white, 
            borderRadius: BorderRadius.circular(kRadiusMedium.r)),
        child: Center(
          child: Text(text,
              style: AppTextTheme(context).bodyMedium(
                color: AppColors.kBase,
              )),
        ),
      ),
    );
  }
}
