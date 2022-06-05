import 'package:darth_vaders_tabata/app/modules/first_access/first_access_controller.dart';
import 'package:darth_vaders_tabata/app/widgets/default_button_widget.dart';
import 'package:darth_vaders_tabata/core/consts/asset_consts.dart';
import 'package:darth_vaders_tabata/core/theme/app_colors.dart';
import 'package:darth_vaders_tabata/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstAccessPage extends GetView<FirstAccessController> {
  const FirstAccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackgroundColors,
      body: Column(
        children: [
          Image.asset(AssetConsts.FIRST_ACCESS_IMAGE),
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 32),
                AppTextTheme.Header(
                    "Vamos começar o seu primeiro\nTreino Tabata?"),
                const SizedBox(height: 8),
                AppTextTheme.Subtitle(
                    "No próximo passo você vai criar o Tabata ideal\npara o seu treino."),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 32,
                  ),
                  child: DefaultButtonWidget(
                    onTap: controller.createTabata,
                    label: "Criar Tabata",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
