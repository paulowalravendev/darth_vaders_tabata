import 'package:darth_vaders_tabata/app/modules/training_feedback/training_feedback_controller.dart';
import 'package:darth_vaders_tabata/app/widgets/default_app_bar_widget.dart';
import 'package:darth_vaders_tabata/app/widgets/default_button_widget.dart';
import 'package:darth_vaders_tabata/app/widgets/header_info_widget.dart';
import 'package:darth_vaders_tabata/core/consts/asset_consts.dart';
import 'package:darth_vaders_tabata/core/theme/app_colors.dart';
import 'package:darth_vaders_tabata/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrainingFeedbackPage extends GetView<TrainingFeedbackController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackgroundColors,
      appBar: DefaultAppBarWidget(
        color: AppColors.defaultButtonBackgroundColor,
        showBottonBorder: false,
      ),
      body: Column(
        children: [
          showTabataFeedback(),
          writeTabataFeedback(),
        ],
      ),
    );
  }

  Container writeTabataFeedback() {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 24),
          Center(
            child: AppTextTheme.Header("Como foi o seu treino?"),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 3)),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          AssetConsts.LIGTH_ICON,
                          height: 25,
                          color: AppColors.defaultTextColors,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.backgroundCardColors,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppTextTheme.Normal("Leve"),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          AssetConsts.MODERATE_ICON,
                          height: 25,
                          color: AppColors.defaultTextColors,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.backgroundCardColors,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppTextTheme.Normal("Moderado"),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          AssetConsts.INTENSE_ICON,
                          height: 25,
                          color: AppColors.defaultTextColors,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.backgroundCardColors,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppTextTheme.Normal("Intenso"),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
            ],
          ),
          SizedBox(height: 28),
          Center(
            child: AppTextTheme.Header("Deixe aqui mais detalhes:"),
          ),
          SizedBox(height: 8),
          Card(
            shadowColor: Colors.blueAccent,
            color: AppColors.defaultBackgroundColors,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: const TextStyle(color: AppColors.defaultTextColors),
                maxLines: 8, //or null
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.defaultTextHintColor),
                  ),
                  hintText: "Conte mais sobre o seu treino (opcional).",
                  hintStyle:
                      const TextStyle(color: AppColors.defaultTextHintColor),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DefaultButtonWidget(
              label: "Salvar",
              onTap: () => {},
            ),
          ),
        ],
      ),
    );
  }

  Container showTabataFeedback() {
    return Container(
      color: AppColors.defaultButtonBackgroundColor,
      child: Column(
        children: [
          Center(
            child: (AppTextTheme.Header("Treino Finalizado!")),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
              ),
              const HeaderInfoWidget(
                icon: Icon(
                  Icons.sports_gymnastics_outlined,
                  color: AppColors.defaultTextColors,
                ),
                label: "Séries",
                value: "20",
              ),
              const HeaderInfoWidget(
                icon: Icon(
                  Icons.restart_alt,
                  color: AppColors.defaultTextColors,
                ),
                label: "Cycles",
                value: "3",
              ),
              const HeaderInfoWidget(
                icon: Icon(
                  Icons.access_time_rounded,
                  color: AppColors.defaultTextColors,
                ),
                label: "Tempo Total",
                value: "4:00",
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
