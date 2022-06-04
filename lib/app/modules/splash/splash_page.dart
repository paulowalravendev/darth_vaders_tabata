import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'package:darth_vaders_tabata/core/consts/asset_consts.dart';
import 'package:darth_vaders_tabata/core/theme/app_colors.dart';
import 'package:darth_vaders_tabata/app/modules/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.showNextPageBefore3Seconds();

    return Container(
      color: AppColors.defaultBackgroundColors,
      child: Center(
        child: Lottie.asset(AssetConsts.SPLASH_LOTTIE),
      ),
    );
  }
}
