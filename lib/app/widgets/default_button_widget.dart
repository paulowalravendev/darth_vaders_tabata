import 'package:flutter/material.dart';

import 'package:darth_vaders_tabata/core/theme/app_colors.dart';
import 'package:darth_vaders_tabata/core/theme/app_text_theme.dart';

class DefaultButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  const DefaultButtonWidget(
      {super.key, required this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.defaultButtonBackground,
            border: Border.all(),
            borderRadius: BorderRadius.circular(24)),
        width: double.maxFinite,
        height: 48,
        child: Center(child: AppTextTheme.Button(label)),
      ),
    );
  }
}
