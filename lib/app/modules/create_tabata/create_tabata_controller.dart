import 'package:darth_vaders_tabata/app/routes/routes.dart';
import 'package:get/get.dart';

class CreateTabataController extends GetxController {
  CreateTabataController();

  void save() {
    Get.offAllNamed(Routes.HOME);
  }
}
