import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderInformation extends StatelessWidget {
  const HeaderInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kMarginApp.w,
        right: kMarginApp.w,
        bottom: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SizedBox(height: 5.h),
          Text(
            "Ticket - 0001",
            style: AppTextTheme(context).headlineMedium(
              color: AppColors.kPrimary,
            ),
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
          )
        ],
      ),
    );
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
