import 'package:darth_vaders_tabata/app/modules/tabata_player/tabata_player_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabataPlayerPage extends GetView<TabataPlayerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TabataPlayerPage')),
        body: SafeArea(child: Text('TabataPlayerController')));
  }
}
