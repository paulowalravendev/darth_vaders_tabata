import 'package:flutter/material.dart';

import 'package:darth_vaders_tabata/core/theme/app_colors.dart';

class DefaultAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Text? title;
  final Color? color;
  final bool showBottonBorder;

  DefaultAppBarWidget({
    this.title,
    this.color,
    this.showBottonBorder = true,
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color ?? Colors.transparent,
      elevation: showBottonBorder ? null : 0,
      centerTitle: true,
      title: title,
      leading: IconButton(
        icon: const Icon(Icons.close, color: AppColors.defaultTextColors),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
