import 'package:darth_vaders_tabata/app/data/enums/feedback_reaction.dart';
import 'package:darth_vaders_tabata/app/data/models/tabata_model.dart';
import 'package:darth_vaders_tabata/app/data/services/tabata_service.dart';
import 'package:darth_vaders_tabata/app/routes/routes.dart';
import 'package:get/get.dart';

class TrainingFeedbackController extends GetxController {
  TrainingFeedbackController();

  var reaction = -1.obs;
  var descriptionInputText;

  void save() {
    _onFineshed();
  }

  void setReaction(FeedbackReaction feedbackReaction) {
    reaction = feedbackReaction.index;
  }

  void _onFineshed() {
    Get.offAllNamed(Routes.HOME);
  }

  TabataModel getTabata() => Get.find<TabataService>().getTabata();
}
