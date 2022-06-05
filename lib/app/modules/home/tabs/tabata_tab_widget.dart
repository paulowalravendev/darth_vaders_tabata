import 'package:flutter/material.dart';

import 'package:darth_vaders_tabata/app/modules/home/home_controller.dart';
import 'package:darth_vaders_tabata/app/widgets/default_button_widget.dart';
import 'package:darth_vaders_tabata/app/widgets/header_info_widget.dart';
import 'package:darth_vaders_tabata/core/consts/asset_consts.dart';
import 'package:darth_vaders_tabata/core/theme/app_colors.dart';
import 'package:darth_vaders_tabata/core/theme/app_text_theme.dart';

class TabataTabWidget extends StatelessWidget {
  final HomeController controller;

  const TabataTabWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tabata = controller.getTabata();

    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 56),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderInfoWidget(
                  icon: Image.asset(
                    AssetConsts.HALTER_ICON,
                    height: 13,
                    color: AppColors.defaultTextColors,
                  ),
                  label: "Series",
                  value: tabata.amountSerie.toString(),
                ),
                HeaderInfoWidget(
                  icon: Image.asset(
                    AssetConsts.CYCLE_ICON,
                    height: 13,
                    color: AppColors.defaultTextColors,
                  ),
                  label: "Ciclos",
                  value: tabata.amountCycles.toString(),
                ),
                HeaderInfoWidget(
                  icon: Image.asset(
                    AssetConsts.TIMER_ICON,
                    height: 13,
                    color: AppColors.defaultTextColors,
                  ),
                  label: "Tempo total",
                  value: '${(Duration(seconds: tabata.totalTime))}'
                      .split('.')[0]
                      .padLeft(8, '0')
                      .replaceFirst("00:", ""),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(40.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    child: Container(
                      width: 260,
                      height: 260,
                      child: CircularProgressIndicator(
                        backgroundColor: AppColors.defaultBackgroundColors,
                        color: AppColors.serieProgressColor,
                        strokeWidth: 10,
                        value: 100,
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
                        value: 100,
                      ),
                    ),
                  ),
                  Align(
                    child: GestureDetector(
                      onTap: controller.toTabataPlay,
                      child: Container(
                        width: 280,
                        height: 280,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AssetConsts.PLAY_ICON,
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(height: 23),
                            AppTextTheme.Button("Toque para iniciar")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: DefaultButtonWidget(
                onTap: controller.toCreateTabata, label: "Editar tabata"),
          ),
        ],
      ),
    );
  }
}
