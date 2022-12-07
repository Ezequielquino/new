import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme(this.context);
  final BuildContext context;

  TextStyle titleAppBar({
    Color color = AppColors.kPrimary,
  }) =>
      Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(color: color, fontWeight: FontWeight.bold);

  TextStyle subTitleLargeBold({Color color = Colors.white}) => Theme.of(context)
      .textTheme
      .subtitle1!
      .copyWith(color: color, fontWeight: FontWeight.bold);

  TextStyle bodyMedium({Color? color = AppColors.kSecondary}) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(color: color);

  TextStyle bodyMediumRegular({Color? color = AppColors.kSecondary}) =>
      Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: color, fontWeight: FontWeight.w300);

/*   TextStyle bodySmallMedium({Color? color = Colors.white}) => Theme.of(context)
      .textTheme
      .bodySmall!
      .copyWith(color: color, fontWeight: FontWeight.w500); */

  TextStyle bodyMediumBold({Color color = Colors.white}) => Theme.of(context)
      .textTheme
      .bodyMedium!
      .copyWith(color: color, fontWeight: FontWeight.bold);

  TextStyle bodySmall({Color? color = Colors.white}) =>
      Theme.of(context).textTheme.bodySmall!.copyWith(
            color: color,
          );

  TextStyle headlineMedium({Color color = AppColors.kPrimary}) {
    return Theme.of(context).textTheme.headline5!.copyWith(
          color: color,
          fontWeight: FontWeight.bold,
        );
  }

/* 
  TextStyle h4Bold({Color color = AppColors.kBase}) => Theme.of(context)
      .textTheme
      .headline4!
      .copyWith(color: color, fontWeight: FontWeight.bold);

  TextStyle h5Bold({Color? color = Colors.white}) {
    return Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(color: color, fontWeight: FontWeight.bold);
  }

  TextStyle h6Bold({Color? color = AppColors.kSecondary}) {
    return Theme.of(context)
        .textTheme
        .headline6!
        .copyWith(color: color, fontWeight: FontWeight.bold);
  }



  TextStyle titleLargeNormal({Color? color = AppColors.kSecondary}) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(color: color);
  }

  TextStyle titleLargeBold({Color? color = Colors.white}) {
    return Theme.of(context)
        .textTheme
        .titleLarge!
        .copyWith(color: color, fontWeight: FontWeight.bold);
  }

  TextStyle titleContent() {
    return Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(color: AppColors.kText, fontWeight: FontWeight.bold);
  }

  TextStyle subTitle1Normal({
    Color textColor = Colors.white,
  }) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(color: textColor);
  }

  TextStyle subTitle1SemiBold({
    Color textColor = Colors.white,
  }) =>
      Theme.of(context)
          .textTheme
          .subtitle1!
          .copyWith(color: textColor, fontWeight: FontWeight.w600);

  TextStyle subTitle1Bold({Color color = Colors.white}) => Theme.of(context)
      .textTheme
      .subtitle1!
      .copyWith(color: color, fontWeight: FontWeight.bold);

  TextStyle bodyMedium({
    Color? color = AppColors.kDisabled,
  }) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(color: color);
  }

  TextStyle bodyMediumRegular({
    Color? color = AppColors.kDisabled,
  }) {
    return Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(color: color, fontWeight: FontWeight.w300);
  }

  TextStyle bodySmallMedium({Color? color = Colors.white}) {
    return Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(color: color, fontWeight: FontWeight.w500);
  }

  TextStyle bodySmallNormal({Color? color = Colors.white70}) {
    return Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(color: color, fontSize: 12);
  }

  TextStyle bodySmallBold({Color? color = Colors.white70}) {
    return Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(color: color, fontWeight: FontWeight.bold);
  }

  TextStyle titleMediumBold({Color? color = Colors.white}) {
    return Theme.of(context)
        .textTheme
        .titleMedium!
        .copyWith(color: color, fontWeight: FontWeight.bold);
  }

  TextStyle titleSmallNormal({Color color = Colors.white}) {
    return Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(color: color, fontWeight: FontWeight.w300);
  }

  TextStyle titleSmallBold({Color color = Colors.white}) {
    return Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(color: color, fontWeight: FontWeight.bold);
  }

  TextStyle bodyMediumBold({Color color = Colors.white}) {
    return Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(color: color, fontWeight: FontWeight.bold);
  }

  TextStyle captionBold({Color color = Colors.white}) {
    return Theme.of(context).textTheme.caption!.copyWith(
          color: color,
          fontWeight: FontWeight.bold,
        );
  } */
}
