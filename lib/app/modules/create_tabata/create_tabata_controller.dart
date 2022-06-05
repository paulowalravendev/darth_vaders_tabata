import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/routes/routes.dart';

class CreateTabataController extends GetxController {
  CreateTabataController();

  void save() {
    Get.offAllNamed(Routes.HOME);
  }
}
