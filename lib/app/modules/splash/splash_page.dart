import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/modules/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    controller.showNextPageBefore3Seconds();

    return Scaffold(
        appBar: AppBar(title: Text('SplashPage')),
        body: SafeArea(child: Text('SplashController')));
  }
}
