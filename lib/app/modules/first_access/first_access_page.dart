import 'package:darth_vaders_tabata/app/modules/first_access/first_access_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstAccessPage extends GetView<FirstAccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FirtAccessPage')),
      body: SafeArea(
        child: TextButton(
          child: Text("Criar Tabata"),
          onPressed: controller.createTabata,
        ),
      ),
    );
  }
}
