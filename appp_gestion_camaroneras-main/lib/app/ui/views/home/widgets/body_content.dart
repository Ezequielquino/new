import 'package:app_gestion_camaroneras/app/ui/views/home/widgets/shrimp_farms.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.78,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kRadiusLarge.r),
            topRight: Radius.circular(kRadiusLarge.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20.h,
                left: kMarginApp.w,
                right: kMarginApp.w,
                bottom: 10.h,
              ),
              child: Text(
                "Camaroneras",
                style: AppTextTheme(context).subTitleLargeBold(
                  color: AppColors.kPrimary,
                ),
              ),
            ),
            const Expanded(
              child: ShrimpFarms(),
            ),
          ],
        ),
      ),
    );
  }
}
