import 'package:app_gestion_camaroneras/app/ui/components/buttons/btn_prymary.dart';
import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/widgets/buttons.dart';
import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/widgets/attach_image.dart';
//import 'package:app_gestion_camaroneras/app/ui/views/swimming_pool/widgets/swimming_pools.dart';
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
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20.h,
                left: kMarginApp.w,
                right: kMarginApp.w,
                bottom: 10.h,
              ),
              child: Text(
                "Crear nuevo ticket",
                style: AppTextTheme(context).subTitleLargeBold(
                  color: AppColors.kPrimary,
                ),
              ),
            ),
            Row(
              children: const [
                SizedBox(width: 10.0),
                Buttons(text: "Piscina"),
                SizedBox(width: 10.0),
                Buttons(text: "Unidad central"),
                SizedBox(width: 10.0),
                Buttons(text: "Alimentador")
              ],
            ),
            //SizedBox(height: 20.0),
            AttachImage(),
            Container(
              color: Colors.white,
              height: 150.0,
              margin: EdgeInsets.only(top: 5.h),
              padding: EdgeInsets.symmetric(
                horizontal: kMarginLargeApp.w,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  BtnPrimary(
                      text: "Guardar",
                      textColor: Colors.white,
                      //isOutline: true,
                      onPressed: () {}),
                  SizedBox(height: 20.h),
                  BtnPrimary(
                      text: "Cancelar",
                      textColor: Colors.blue,
                      isOutline: true,
                      onPressed: () {}),
                  SizedBox(height: 10.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
