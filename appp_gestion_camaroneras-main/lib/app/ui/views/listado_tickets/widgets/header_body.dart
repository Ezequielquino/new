import 'package:app_gestion_camaroneras/app/ui/views/ticket/ticket_controller.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HeaderBody extends GetView<TicketController> {
  const HeaderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140.h,
      color: Colors.amber, //AppColors.kAppBar,
      padding: EdgeInsets.symmetric(horizontal: kMarginApp.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
          CircleAvatar(
            radius: 24.r,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.cloud_upload_sharp,
              size: 30.sp,
              color: AppColors.kBase,
            ),
          ),
        ],
      ),
    );
  }
}
