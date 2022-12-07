import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140.h,
      color: AppColors.kBase,
      padding: EdgeInsets.only(left: kMarginApp.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Camaronera 1",
            style: AppTextTheme(context).headlineMedium(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Text(
                "Coorporación Copa",
                style: AppTextTheme(context).bodySmall(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
