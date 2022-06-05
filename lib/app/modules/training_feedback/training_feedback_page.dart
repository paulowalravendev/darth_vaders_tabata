import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/modules/training_feedback/training_feedback_controller.dart';

class TrainingFeedbackPage extends GetView<TrainingFeedbackController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TrainingFeedbackPage')),
        body: SafeArea(child: Text('TrainingFeedbackController')));
  }
}
