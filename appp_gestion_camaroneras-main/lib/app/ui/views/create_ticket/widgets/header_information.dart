import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/create_ticket_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/menu/menu_controller.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HeaderInformation extends GetView<CreateTiketsController> {
  const HeaderInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140.h,
      color: AppColors.kAppBar,
      padding: EdgeInsets.only(left: kMarginApp.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${controller.shrimpsFarm.name}",
            style: AppTextTheme(context).headlineMedium(),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              SvgPicture.asset(
                Helpers.pathAssetIcons("ico_swimming_pool.svg"),
              ),
              SizedBox(width: 10.w),
              Text(
                "${controller.shrimpsFarm.pondIds?.length} Piscinas",
                style: AppTextTheme(context).bodySmall(
                  color: AppColors.kPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
