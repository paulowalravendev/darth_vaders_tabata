import 'package:darth_vaders_tabata/app/routes/routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void playerTabata() {
    Get.toNamed(Routes.TABATA_PLAYER);
  }
}
