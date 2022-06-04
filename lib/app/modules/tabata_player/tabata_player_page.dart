import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/widgets/header_info_widget.dart';
import 'package:darth_vaders_tabata/core/consts/asset_consts.dart';
import 'package:darth_vaders_tabata/app/modules/tabata_player/tabata_player_controller.dart';
import 'package:darth_vaders_tabata/core/theme/app_colors.dart';

class TabataPlayerPage extends GetView<TabataPlayerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackgroundColors,
      body: SafeArea(
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
                  value: "8",
                ),
                HeaderInfoWidget(
                  icon: Image.asset(
                    AssetConsts.CYCLE_ICON,
                    height: 13,
                    color: AppColors.defaultTextColors,
                  ),
                  label: "Ciclos",
                  value: "1",
                ),
                HeaderInfoWidget(
                  icon: Image.asset(
                    AssetConsts.TIMER_ICON,
                    height: 13,
                    color: AppColors.defaultTextColors,
                  ),
                  label: "Tempo total",
                  value: "4:00",
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
