import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/modules/create_tabata/create_tabata_controller.dart';
import 'package:darth_vaders_tabata/app/widgets/default_app_bar_widget.dart';
import 'package:darth_vaders_tabata/core/theme/app_colors.dart';

class CreateTabataPage extends GetView<CreateTabataController> {
  final String _title = "Configurações";
  const CreateTabataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackgroundColors,
      appBar: DefaultAppBarWidget(title: Text(_title)),
      body: SafeArea(
        child: TextButton(
          child: Text("Criar Tabata"),
          onPressed: controller.save,
        ),
      ),
    );
  }
}
