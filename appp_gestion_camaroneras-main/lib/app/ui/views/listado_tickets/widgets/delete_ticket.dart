import 'package:app_gestion_camaroneras/app/ui/components/buttons/btn_prymary.dart';
import 'package:app_gestion_camaroneras/app/ui/components/dialogs/content_modal_sheet.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
//import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DeleteTicket extends StatelessWidget {
  const DeleteTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.bottomSheet(
          ContentModalSheet(
            showHeaderActions: false,
            title: "Oosp",
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                SizedBox(height: 5.h),
                Text(
                  "¿Estás seguro que deseas eliminar el ticket?",
                  style: AppTextTheme(context).bodyMedium(
                    color: AppColors.kPrimary,
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Expanded(
                      child: BtnPrimary(
                        isOutline: true,
                        text: "Cancelar",
                        textColor: AppColors.kBase,
                        onPressed: Get.back,
                      ),
                    ),
                    SizedBox(width: 25.w),
                    Expanded(
                      child: BtnPrimary(
                        text: "Si, Seguro",
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.r),
            ),
          ),
          isScrollControlled: true,
          backgroundColor: AppColors.kBackground,
        );
      },
      child: CircleAvatar(
        radius: 16.r,
        backgroundColor: Colors.transparent,
        child: SvgPicture.asset(
          Helpers.pathAssetIcons("ico_delete.svg"),
          color: AppColors.kRed,
          height: 20.h,
        ),
      ),
    );
  }
}
