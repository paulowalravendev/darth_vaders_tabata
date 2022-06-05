import 'package:darth_vaders_tabata/app/data/models/tabata_model.dart';
import 'package:darth_vaders_tabata/app/data/services/tabata_service.dart';
import 'package:get/get.dart';

class TrainingFeedbackController extends GetxController {
  TrainingFeedbackController();

  var reaction = -1.obs;
  var descriptionInputText;

  void save() {
    _onFineshed();
  }

  void _onFineshed() {}

  TabataModel getTabata() => Get.find<TabataService>().getTabata();
}
