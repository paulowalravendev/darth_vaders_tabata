import 'package:darth_vaders_tabata/app/routes/routes.dart';
import 'package:get/get.dart';

class FirstAccessController extends GetxController {
  void createTabata() {
    Get.toNamed(Routes.TABATA_FEEDBACK);
  }
}
