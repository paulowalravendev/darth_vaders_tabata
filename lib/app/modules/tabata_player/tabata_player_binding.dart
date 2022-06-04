import 'package:darth_vaders_tabata/app/modules/tabata_player/tabata_player_controller.dart';
import 'package:get/get.dart';

class TabataPlayerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabataPlayerController>(() => TabataPlayerController());
  }
}
