import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BtnFloat extends StatelessWidget {
  const BtnFloat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kMarginApp.w),
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        /*  boxShadow: [
          BoxShadow(
            color: AppColors.kSecondary.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 27,
            offset: const Offset(0, 4),
          ),
        ], */
      ),
      child: Row(
        children: [
          SvgPicture.asset(Helpers.pathAssetIcons("ico_help.svg")),
          SizedBox(width: 10.w),
          Text(
            "Ayuda",
            style: AppTextTheme(context).bodyMediumBold(
              color: AppColors.kPrimary,
            ),
          )
        ],
      ),
    );
  }
}
