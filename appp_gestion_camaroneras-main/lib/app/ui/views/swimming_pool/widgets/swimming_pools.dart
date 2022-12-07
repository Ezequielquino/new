import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/app/ui/views/swimming_pool/swimming_pool_controller.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SwimmingPools extends StatelessWidget {
  const SwimmingPools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = ["", "", ""];
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Column(
              children: [
                const ItemSwimmingPool(),
                if (index != (items.length - 1))
                  Divider(
                    indent: kMarginApp.w,
                    endIndent: kMarginApp.w,
                    color: AppColors.kDividerLine,
                  ),
              ],
            ),
            childCount: items.length,
          ),
        ),
      ],
    );
  }
}

class ItemSwimmingPool extends GetView<SwimmingPoolController> {
  const ItemSwimmingPool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          RoutesName.SWIMMINGPOOL,
          arguments: controller.shrimpsFarm,
        );
      },
      child: Container(
        color: Colors.transparent,
        margin: EdgeInsets.only(
          left: kMarginApp.w,
          right: kMarginApp.w,
        ),
        padding: EdgeInsets.only(top: 10.h, bottom: 10.h, right: 15.w),
        child: Row(
          children: [
            SvgPicture.asset(
              Helpers.pathAssetIcons("ico_swimming_pool.svg"),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Piscina 1",
                  style: AppTextTheme(context).bodyMediumBold(
                    color: AppColors.kPrimary,
                  ),
                ),
                SizedBox(height: 5.h),
                Text.rich(
                  TextSpan(
                    text: "Ciclo: ",
                    style: AppTextTheme(context)
                        .bodySmall(color: AppColors.kSecondary),
                    children: <TextSpan>[
                      TextSpan(
                        text: "UTP-O44334 - 06/10/2022 10:26",
                        style: AppTextTheme(context)
                            .bodySmall(color: AppColors.kSecondary),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14.sp,
              color: AppColors.kBase,
            ),
          ],
        ),
      ),
    );
  }
}
