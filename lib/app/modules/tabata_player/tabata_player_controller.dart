import 'dart:async';

import 'package:darth_vaders_tabata/app/data/enums/training_status.dart';
import 'package:darth_vaders_tabata/app/data/models/training_model.dart';
import 'package:darth_vaders_tabata/app/data/services/training_service.dart';
import 'package:darth_vaders_tabata/app/routes/routes.dart';
import 'package:get/get.dart';

class TabataPlayerController extends GetxController {
  late Rx<TrainingModel> training;

  TabataPlayerController() {
    training = Get.find<TrainingService>().getCurrentTraining()!.obs;
  }

  @override
  void onInit() {
    _ready();
    super.onInit();
    Timer.periodic(Duration(milliseconds: 100), (t) {
      training.update((val) {});
    });
  }

  void _ready() {
    training.update((val) {
      val!.prepare();
    });
    Future.delayed(Duration(milliseconds: 2600), () {
      training.update((val) {
        training.value.start();
      });
    });
  }

  void _onFinished() {
    Get.offNamed(Routes.TABATA_FEEDBACK);
  }
}
