import 'package:app_gestion_camaroneras/app/data/models/response/response_shrimps_farm_model.dart';
import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/app/ui/views/home/home_controller.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ShrimpFarms extends GetView<HomeController> {
  const ShrimpFarms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 10.h)),
        Obx(
          () => SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 180.w,
              mainAxisSpacing: 30.w,
              crossAxisSpacing: 5.w,
              childAspectRatio: 1.15.w,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => ItemShrimpFarms(
                item: controller.shrimpsFarm[index],
              ),
              childCount: controller.shrimpsFarm.length,
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 40.h)),
      ],
    );
  }
}

class ItemShrimpFarms extends StatelessWidget {
  const ItemShrimpFarms({
    Key? key,
    required this.item,
  }) : super(key: key);
  final ShrimpsFarm item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(RoutesName.MENU, arguments: item),
      child: Container(
        margin: EdgeInsets.only(
          left: kMarginApp.w,
          right: kMarginApp.w,
        ),
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(kRadiusLarge.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.kSecondary.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 15,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                Helpers.pathAssetIcons("ico_shrimp.svg"),
              ),
            ),
            Text(
              "${item.name}",
              style: AppTextTheme(context).bodyMediumBold(
                color: AppColors.kPrimary,
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  Helpers.pathAssetIcons("ico_swimming_pool.svg"),
                ),
                SizedBox(width: 10.w),
                Text(
                  "${item.pondIds?.length} Piscinas",
                  style: AppTextTheme(context).bodyMedium(
                    color: AppColors.kPrimary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
