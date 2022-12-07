import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kMarginApp.w),
      child: GestureDetector(
        onTap: () {
          Get.bottomSheet(
            Container(
              width: double.infinity,
              height: 320.h,
              padding: EdgeInsets.only(
                top: 20.h,
                left: kMarginApp.w,
                right: kMarginApp.w,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kRadiusLarge.r),
                  topRight: Radius.circular(kRadiusLarge.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Camaronera 1",
                    style: AppTextTheme(context).headlineMedium(
                      color: AppColors.kPrimary,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Coorporación Copa",
                    style: AppTextTheme(context).bodySmall(
                      color: AppColors.kSecondary,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  rowMenu(
                    context,
                    onTap: () {},
                    icon: Icons.person_outline_outlined,
                    text: "Mis datos",
                  ),
                  rowMenu(
                    context,
                    onTap: () {},
                    icon: Icons.lock_outline_rounded,
                    text: "Actualizar contraseña",
                  ),
                  rowMenu(
                    context,
                    onTap: () {},
                    icon: Icons.headset_mic_outlined,
                    text: "Centro de Ayuda",
                  ),
                  rowMenu(
                    context,
                    onTap: () {
                      Get.offNamed(RoutesName.LOGIN);
                    },
                    icon: Icons.power_settings_new_sharp,
                    text: "Cerrar sesión",
                    showArrow: false,
                    showBorder: false,
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
          );
        },
        child: CircleAvatar(
          backgroundColor: Colors.black26,
          //backgroundImage: AssetImage(Helpers.pathAssetIcons("ico_user.svg")),
        ),
      ),
    );
  }

  Widget rowMenu(
    BuildContext context, {
    required VoidCallback onTap,
    required IconData icon,
    required String text,
    bool showBorder = true,
    bool showArrow = true,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          border: showBorder
              ? const Border(
                  bottom: BorderSide(
                    color: AppColors.kDividerLine,
                    width: .3,
                  ),
                )
              : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.kBase, size: 18.sp),
            SizedBox(width: 10.w),
            Text(
              text,
              style: AppTextTheme(context).bodyMedium(
                color: AppColors.kPrimary,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
