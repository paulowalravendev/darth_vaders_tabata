import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/routes/routes.dart';

class FirstAccessController extends GetxController {
  void createTabata() {
    Get.toNamed(Routes.CREATE_TABATA);
  }
}
