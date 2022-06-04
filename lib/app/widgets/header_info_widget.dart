import 'package:flutter/material.dart';

import 'package:darth_vaders_tabata/core/theme/app_text_theme.dart';

class HeaderInfoWidget extends StatelessWidget {
  final Widget icon;
  final String label;
  final String value;

  const HeaderInfoWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              icon,
              SizedBox(width: 8),
              AppTextTheme.HeaderInfoLabel(label),
            ],
          ),
          SizedBox(height: 3),
          Center(
            child: AppTextTheme.HeaderInfoValue(value),
          ),
        ],
      ),
    );
  }
}
