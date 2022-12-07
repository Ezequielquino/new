import 'package:app_gestion_camaroneras/app/ui/components/cards/images_card.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OneTab extends StatelessWidget {
  const OneTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kMarginApp.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h),
          Text(
            "Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final. ",
            style: AppTextTheme(context).bodyMedium(),
          ),
          SizedBox(height: 20.h),
          Text(
            "Archivos adjuntos",
            style: AppTextTheme(context).subTitleLargeBold(
              color: AppColors.kPrimary,
            ),
          ),
          const ImagesCard(),
          Row(
            children: [
              Text(
                "Sintomas: ",
                style: AppTextTheme(context).bodyMedium(),
              ),
              Text(
                "No dosifica",
                style: AppTextTheme(context).bodyMediumBold(
                  color: AppColors.kPrimary,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
