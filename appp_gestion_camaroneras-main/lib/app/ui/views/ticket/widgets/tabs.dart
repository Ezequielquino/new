import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/one_tab.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/two_tab.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            labelStyle: AppTextTheme(context).subTitleLargeBold(),
            isScrollable: false,
            labelColor: AppColors.kPrimary,
            unselectedLabelColor: AppColors.kSecondary,
            indicatorColor: AppColors.kBase,
            tabs: const [
              Tab(
                text: 'Por sincronizar',
              ),
              Tab(text: 'Sincronizados'),
            ],
          ),
          Expanded(
            child: const TabBarView(
              children: [
                OneTab(),
                TwoTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
