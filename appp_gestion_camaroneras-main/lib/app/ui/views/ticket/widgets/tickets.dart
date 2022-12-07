import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/delete_ticket.dart';
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
    List<String> items = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 20.h),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => const ItemTicket(),
            childCount: items.length,
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 80.h)),
      ],
    );
  }
}

class ItemTicket extends StatelessWidget {
  const ItemTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(RoutesName.TICKETDETAIL),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          left: kMarginApp.w,
          right: kMarginApp.w,
          bottom: 20.h,
        ),
        padding: EdgeInsets.only(top: 20.h, bottom: 20.h, right: 15.w),
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
        child: Row(
          children: [
            Container(
              width: 5.0,
              height: 80.h,
              margin: EdgeInsets.only(right: 10.w),
              decoration: BoxDecoration(
                color: AppColors.kBase,
                borderRadius: BorderRadius.circular(kRadiusSmall.r),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "20/11/22 10:28",
                    style: AppTextTheme(context).bodyMedium(
                      color: AppColors.kSecondary,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Text(
                        "Ticket - 0001",
                        style: AppTextTheme(context).subTitleLargeBold(
                          color: AppColors.kPrimary,
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        Helpers.pathAssetIcons("ico_attachment.svg"),
                        color: AppColors.kBase,
                      ),
                      SizedBox(width: 10.w),
                      const DeleteTicket(),
                      /* GestureDetector(
                        onTap: () {
                          print("object");
                          const DeleteTicket();
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
                      ) */
                    ],
                  ),
                  SizedBox(height: 14.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _itemDetail(
                        context,
                        title: "Piscina",
                        value: "P1",
                      ),
                      _itemDetail(
                        context,
                        title: "Dispositivo",
                        value: "UC - 57821",
                      ),
                      _itemDetail(
                        context,
                        title: "Síntoma",
                        value: "Sobro balanceado",
                      ),
                    ],
                  )
                ],
              ),
            ),
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
