import 'package:darth_vaders_tabata/app/modules/first_access/first_access_controller.dart';
import 'package:darth_vaders_tabata/core/consts/asset_consts.dart';
import 'package:darth_vaders_tabata/core/theme/app_colors.dart';
import 'package:darth_vaders_tabata/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstAccessPage extends GetView<FirstAccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackgroundColors,
      body: Column(
        children: [
          SizedBox(
            child: Image.asset(AssetConsts.FIRST_ACCESS_IMAGE),
          ),
          Column(
            children: [
              const SizedBox(height: 32),
              AppTextTheme.Header(
                  "Vamos começar o seu primeiro\nTreino Tabata?"),
              const SizedBox(height: 8),
              AppTextTheme.Subtitle(
                  "No próximo passo você vai criar o Tabata ideal\npara o seu treino."),
              const SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GestureDetector(
                  onTap: controller.createTabata,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF603CA2),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(24)),
                    width: double.maxFinite,
                    height: 48,
                    child: Center(child: AppTextTheme.Button("Criar Tabata")),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
