import 'package:darth_vaders_tabata/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'package:darth_vaders_tabata/app/data/enums/training_status.dart';
import 'package:darth_vaders_tabata/app/data/models/training_model.dart';
import 'package:darth_vaders_tabata/app/modules/tabata_player/tabata_player_controller.dart';
import 'package:darth_vaders_tabata/core/consts/asset_consts.dart';
import 'package:darth_vaders_tabata/core/theme/app_colors.dart';

class TabataPlayerPage extends GetView<TabataPlayerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackgroundColors,
      body: Container(
        child: Obx(
          () => controller.training.value.status == TrainingStatus.countdown
              ? Center(
                  child: Lottie.asset(AssetConsts.COUNTDOWN_LOTTIE),
                )
              : controller.training.value.status == TrainingStatus.completed
                  ? AppTextTheme.BigHeader("ACABOU")
                  : Player(training: controller.training),
        ),
      ),
    );
  }
}

class Player extends StatelessWidget {
  final Rx<TrainingModel> training;

  const Player({
    Key? key,
    required this.training,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(AssetConsts.CYCLE_ICON),
              width: 16,
              height: 16,
            ),
            SizedBox(width: 2),
            AppTextTheme.Header(
                "${training.value.currentCycle}/${training.value.tabata.amountCycles}")
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                child: Container(
                  width: 260,
                  height: 260,
                  child: Obx(
                    () => CircularProgressIndicator(
                      backgroundColor: AppColors.defaultBackgroundColors,
                      color: AppColors.serieProgressColor,
                      strokeWidth: 10,
                      value: training.value.currentSerieSecond * 1.667 / 100,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.serieProgressColor),
                    ),
                  ),
                ),
              ),
              Align(
                child: Container(
                  width: 280,
                  height: 280,
                  child: CircularProgressIndicator(
                    backgroundColor: AppColors.defaultBackgroundColors,
                    strokeWidth: 2,
                    color: AppColors.cycleProgressColor,
                    value: training.value.amountSerieDone == 0
                        ? 0
                        : (training.value.amountSerieDone /
                            training.value.tabata.amountSerie),
                    valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.cycleProgressColor),
                  ),
                ),
              ),
              Align(
                child: Container(
                  width: 280,
                  height: 280,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      if (training.value.mode.type == TrainingModeType.Exercice)
                        Image.asset(
                          AssetConsts.EXERCICE_TIME_ICON,
                          width: 24,
                          height: 24,
                        ),
                      if (training.value.mode.type == TrainingModeType.Rest ||
                          training.value.mode.type ==
                              TrainingModeType.Preparing)
                        Image.asset(
                          AssetConsts.REST_TIME_ICON,
                          width: 24,
                          height: 24,
                        ),
                      if (training.value.mode.type == TrainingModeType.Interval)
                        Image.asset(
                          AssetConsts.INTERVAL_TIME_ICON,
                          width: 24,
                          height: 24,
                        ),
                      Spacer(
                        flex: 2,
                      ),
                      AppTextTheme.BigHeader(
                          training.value.currentSerieSecond.toString()),
                      SizedBox(height: 23),
                      AppTextTheme.Button(training.value.mode.displayMode),
                      SizedBox(height: 23),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AssetConsts.HALTER_TAB_ICON,
                            width: 16,
                            height: 16,
                          ),
                          SizedBox(width: 2),
                          Obx(() => AppTextTheme.Button(
                              "${training.value.amountSerieDone + 1}/${training.value.tabata.amountSerie}")),
                        ],
                      ),
                      Spacer(flex: 3),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetConsts.TIMER_ICON,
              width: 16,
              height: 16,
            ),
            SizedBox(width: 8),
            AppTextTheme.Header(
                '${(Duration(seconds: training.value.tabata.totalTime))}'
                    .split('.')[0]
                    .padLeft(8, '0')
                    .replaceFirst("00:", "")),
          ],
        )
      ],
    );
  }
}
