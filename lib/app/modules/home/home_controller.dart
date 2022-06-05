import 'package:darth_vaders_tabata/app/data/models/tabata_model.dart';
import 'package:darth_vaders_tabata/app/data/models/training_model.dart';
import 'package:darth_vaders_tabata/app/data/services/tabata_service.dart';
import 'package:darth_vaders_tabata/app/data/services/training_service.dart';
import 'package:darth_vaders_tabata/app/routes/routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedTab = 0.obs;

  void changeTab(int index) {
    selectedTab.value = index;
  }

  void toCreateTabata() {
    Get.toNamed(Routes.CREATE_TABATA);
  }

  void toTabataPlay() {
    Get.find<TrainingService>().createTraining(getTabata());
    Get.toNamed(Routes.TABATA_PLAYER);
  }

  TabataModel getTabata() => Get.find<TabataService>().getTabata();
}
