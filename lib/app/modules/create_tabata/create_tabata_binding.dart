import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/modules/create_tabata/create_tabata_controller.dart';

class CreateTabataBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateTabataController>(() => CreateTabataController());
  }
}
