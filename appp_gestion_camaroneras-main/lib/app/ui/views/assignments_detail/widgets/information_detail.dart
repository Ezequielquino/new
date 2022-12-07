import 'package:app_gestion_camaroneras/app/ui/components/cards/images_card.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationDetail extends StatelessWidget {
  const InformationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.57.w,
      minChildSize: 0.57.w,
      maxChildSize: 0.9,
      builder: (_, scrollController) => Container(
        padding: EdgeInsets.symmetric(horizontal: kMarginApp.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kRadiusLarge.r),
            topRight: Radius.circular(kRadiusLarge.r),
          ),
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 60.0,
                  height: 8.0,
                  margin: EdgeInsets.only(top: 10.h, bottom: 20.h),
                  decoration: BoxDecoration(
                    color: AppColors.kSecondary,
                    borderRadius: BorderRadius.circular(
                      kRadiusLarge.r,
                    ),
                  ),
                ),
              ),
              Text(
                "Ticket - 0001",
                style: AppTextTheme(context).headlineMedium(
                  color: AppColors.kPrimary,
                ),
              ),
              SizedBox(height: 5.h),
              Text.rich(
                TextSpan(
                  text: "NUEVO",
                  style: AppTextTheme(context)
                      .bodyMediumBold(color: AppColors.kSecondary),
                  children: <TextSpan>[
                    TextSpan(
                      text: " - 20/11/22 10:28",
                      style: AppTextTheme(context)
                          .bodyMedium(color: AppColors.kSecondary),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              const Divider(
                color: AppColors.kDividerLine,
              ),
              SizedBox(height: 14.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _itemDetail(
                    context,
                    title: "Camaronera",
                    value: "Golden",
                  ),
                  _itemDetail(
                    context,
                    title: "Piscina",
                    value: "P1",
                  ),
                  _itemDetail(
                    context,
                    title: "Dispositivo",
                    value: "456612",
                  ),
                ],
              ),
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
        ),
        /* child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            children: [
              Center(
                child: Container(
                  width: 60.0,
                  height: 5.0,
                  margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                  decoration: BoxDecoration(
                    color: AppColors.kSecondary,
                    borderRadius: BorderRadius.circular(
                      kRadiusLarge.r,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ), */
      ),
    );
    /* return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kRadiusLarge.r),
          topRight: Radius.circular(kRadiusLarge.r),
        ),
      ),
    ); */
  }

  Widget _itemDetail(
    BuildContext context, {
    required String title,
    required String value,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextTheme(context).bodyMedium(),
        ),
        SizedBox(height: 5.h),
        Text(
          value,
          style:
              AppTextTheme(context).bodyMediumBold(color: AppColors.kPrimary),
        ),
      ],
    );
  }
}
