import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/modules/tabata_player/tabata_player_controller.dart';

class TabataPlayerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabataPlayerController>(() => TabataPlayerController());
  }
}
