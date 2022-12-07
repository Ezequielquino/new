import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Tickets extends StatelessWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = ["", "", ""];
    return Container(
      margin: EdgeInsets.only(
        left: kMarginApp.w,
        right: kMarginApp.w,
      ),
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                children: [
                  if (index == 0) SizedBox(height: 20.h),
                  const ItemTicket(),
                  if (index != (items.length - 1))
                    const Divider(
                      color: AppColors.kDividerLine,
                    ),
                ],
              ),
              childCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemTicket extends StatelessWidget {
  const ItemTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(RoutesName.ASSIGNMENTSDETAIL),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: "NUEVO",
                style: AppTextTheme(context)
                    .bodyMediumBold(color: AppColors.kSecondary),
                children: <TextSpan>[
                  TextSpan(
                    text: " - 20/11/22 10:28",
                    style: AppTextTheme(context)
                        .bodyMedium(color: AppColors.kSecondary),
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                Text(
                  "TICKET - 0001",
                  style: AppTextTheme(context).subTitleLargeBold(
                    color: AppColors.kPrimary,
                  ),
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 12.r,
                  child: Text("2", style: AppTextTheme(context).bodySmall()),
                ),
                SizedBox(width: 10.w),
                SvgPicture.asset(
                  Helpers.pathAssetIcons("ico_folderopen.svg"),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _itemDetail(
                  context,
                  title: "Camaronera",
                  value: "Golden",
                ),
                _itemDetail(
                  context,
                  title: "Piscina",
                  value: "P1",
                ),
                _itemDetail(
                  context,
                  title: "Dispositivo",
                  value: "456612",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _itemDetail(
    BuildContext context, {
    required String title,
    required String value,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextTheme(context).bodyMedium(),
        ),
        SizedBox(height: 5.h),
        Text(
          value,
          style:
              AppTextTheme(context).bodyMediumBold(color: AppColors.kPrimary),
        ),
      ],
    );
  }
}
