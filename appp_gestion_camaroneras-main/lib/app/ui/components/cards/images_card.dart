import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagesCard extends StatelessWidget {
  const ImagesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      Helpers.pathAssetImage("img_laptop.png"),
      Helpers.pathAssetImage("img_ofi.png"),
      Helpers.pathAssetImage("img_oficina.png"),
    ];
    return Container(
      height: 80.h,
      margin: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        children: List<Widget>.generate(
          images.length,
          (index) => Container(
            width: 90.w,
            margin: EdgeInsets.only(right: 15.w),
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kRadiusMedium.r),
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
