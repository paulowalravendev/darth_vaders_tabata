import 'package:darth_vaders_tabata/app/modules/create_tabata/create_tabata_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateTabataPage extends GetView<CreateTabataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CreateTabataPage')),
      body: SafeArea(
        child: TextButton(
          child: Text("Criar Tabata"),
          onPressed: controller.save,
        ),
      ),
    );
  }
}
