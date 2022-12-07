import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum LogoSize {
  large,
  medium,
  small,
}

enum LogoType {
  white,
  color,
}

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
    this.marginTop = 40.0,
    this.logoType = LogoType.color,
    this.logoSize = LogoSize.large,
  }) : super(key: key);

  final double marginTop;
  final LogoType logoType;
  final LogoSize logoSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop.h),
      alignment: Alignment.center,
      child: Image.asset(
        Helpers.pathAssetImage(
          logoType == LogoType.color ? "logo_color.png" : "white_logo.png",
        ),
        width: width.w,
      ),
    );
  }

  double get width {
    switch (logoSize) {
      case LogoSize.large:
        return kLogoSizeLarge.w;
      case LogoSize.medium:
        return kLogoSizeMedium.w;
      case LogoSize.small:
        return kLogoSizeSmall.w;
      default:
        return kLogoSizeLarge.w;
    }
  }
}
