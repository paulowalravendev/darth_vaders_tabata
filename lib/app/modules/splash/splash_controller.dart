import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/routes/routes.dart';

class SplashController extends GetxController {
  var showNextPage = false.obs;

  SplashController();

  void showNextPageBefore3Seconds() {
    Future.delayed(const Duration(seconds: 3), () {
      showNextPage.value = true;
      Get.offAllNamed(Routes.FIRST_ACCESS);
    });
  }
}
