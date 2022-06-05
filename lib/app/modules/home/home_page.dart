import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/modules/home/home_controller.dart';
import 'package:darth_vaders_tabata/app/modules/home/tabs/tabata_tab_widget.dart';
import 'package:darth_vaders_tabata/core/consts/asset_consts.dart';
import 'package:darth_vaders_tabata/core/theme/app_colors.dart';

class HomePage extends GetView<HomeController> {
  var tabs = [
    TabataTabWidget(controller: Get.find()),
    SafeArea(
        child: Center(
      child: Text(
        "Atividades",
        style: TextStyle(
          color: Colors.white,
          fontSize: 36,
        ),
      ),
    )),
    SafeArea(
        child: Center(
      child: Text(
        "Perfil",
        style: TextStyle(
          color: Colors.white,
          fontSize: 36,
        ),
      ),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackgroundColors,
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: Color(0xFFFFFFFF),
          unselectedItemColor: Color(0xFFABB2BA),
          backgroundColor: AppColors.defaultBackgroundColors,
          currentIndex: controller.selectedTab.value,
          onTap: controller.changeTab,
          items: [
            BottomNavigationBarItem(
              label: 'Tabata',
              icon: SizedBox(
                child: Image.asset(AssetConsts.TIMER_TAB_ICON),
                height: 24,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Atividades',
              icon: SizedBox(
                  child: Image.asset(AssetConsts.HALTER_TAB_ICON), height: 24),
            ),
            BottomNavigationBarItem(
              label: 'Perfil',
              icon: SizedBox(
                child: Image.asset(AssetConsts.PROFILE_TAB_ICON),
                height: 24,
              ),
            ),
          ],
        ),
      ),
      body: Obx(() => tabs.elementAt(controller.selectedTab.value)),
    );
  }
}
