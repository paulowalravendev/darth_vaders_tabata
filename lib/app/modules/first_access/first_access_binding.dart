import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/modules/first_access/first_access_controller.dart';

class FirstAccessBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstAccessController>(() => FirstAccessController());
  }
}
