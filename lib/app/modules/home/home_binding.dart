import 'package:darth_vaders_tabata/app/data/services/tabata_service.dart';
import 'package:darth_vaders_tabata/app/data/services/training_service.dart';
import 'package:darth_vaders_tabata/app/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrainingService>(() => TrainingServiceImpl());
    Get.lazyPut<TabataService>(() => TabataServiceImpl());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
