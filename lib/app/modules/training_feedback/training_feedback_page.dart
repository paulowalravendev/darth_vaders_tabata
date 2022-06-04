import 'package:darth_vaders_tabata/app/modules/training_feedback/training_feedback_controller.dart';
import 'package:darth_vaders_tabata/core/theme/app_colors.dart';
import 'package:darth_vaders_tabata/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrainingFeedbackPage extends GetView<TrainingFeedbackController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackgroundColors,
      appBar: AppBar(
        backgroundColor: AppColors.defaultButtonBackground,
        title: Text(''),
      ),
      //body: SafeArea(child: Text('TrainingFeedbackController')));
      body: Column(
        children: [
          Container(
            color: AppColors.defaultButtonBackground,
            child: Column(
              children: [
                Center(
                  child: (AppTextTheme.Header("Treino Finalizado!")),
                ),
                Row(
                  children: [],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
