import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ContentModalSheet extends StatelessWidget {
  const ContentModalSheet({
    Key? key,
    required this.title,
    required this.child,
    this.showHeaderActions = true,
  }) : super(key: key);

  final String title;
  final Widget child;
  final bool showHeaderActions;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          padding: const EdgeInsets.all(kMarginApp),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              showHeaderActions ? _actionsModalSheet() : const SizedBox(),
              title.isNotEmpty
                  ? Text(
                      title,
                      style: AppTextTheme(context).titleAppBar(),
                    )
                  : const SizedBox(),
              Container(
                margin: EdgeInsets.only(bottom: 20.h),
                child: child,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _actionsModalSheet() {
    return Container(
      margin: EdgeInsets.only(bottom: 0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Container(
            width: 60.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: AppColors.kDisabled,
              borderRadius: BorderRadius.circular(kRadiusLarge),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              backgroundColor: AppColors.kDisabled,
              radius: 12.r,
              child: Icon(
                Icons.close,
                size: 14.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
