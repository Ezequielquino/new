import 'package:app_gestion_camaroneras/app/data/models/response/response_menu_model.dart';
import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/app/ui/views/menu/menu_controller.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Options extends GetView<MenuController> {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 10.h)),
        Obx(
          () => SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 220.w,
              mainAxisSpacing: 5.w,
              crossAxisSpacing: 5.w,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => ItemOption(
                item: controller.options[index],
              ),
              childCount: controller.options.length,
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 40.h)),
      ],
    );
  }
}

class ItemOption extends GetView<MenuController> {
  const ItemOption({
    Key? key,
    required this.item,
  }) : super(key: key);
  final OptionModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(item.route, arguments: controller.shrimpsFarm),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 140.0,
            margin: EdgeInsets.only(
              left: kMarginApp.w,
              right: kMarginApp.w,
            ),
            padding: EdgeInsets.all(50.w),
            decoration: BoxDecoration(
              color: controller.getOptionColor(item.id),
              borderRadius: BorderRadius.circular(kRadiusLarge.r),
            ),
            child: Image.asset(item.icon),
          ),
          SizedBox(height: 10.h),
          Text(
            item.menu,
            textAlign: TextAlign.center,
            style: AppTextTheme(context).bodyMediumBold(
              color: AppColors.kPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
