import 'package:darth_vaders_tabata/app/data/services/tabata_service.dart';
import 'package:darth_vaders_tabata/app/modules/first_access/first_access_controller.dart';
import 'package:get/get.dart';

class FirstAccessBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstAccessController>(() => FirstAccessController());
  }
}
