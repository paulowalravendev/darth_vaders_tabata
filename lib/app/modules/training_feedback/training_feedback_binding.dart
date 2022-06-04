import 'package:darth_vaders_tabata/app/modules/training_feedback/training_feedback_controller.dart';
import 'package:get/get.dart';

class TrainingFeedbackBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrainingFeedbackController>(() => TrainingFeedbackController());
  }
}
