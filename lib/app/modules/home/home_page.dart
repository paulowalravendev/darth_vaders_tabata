import 'package:darth_vaders_tabata/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Tabata',
            icon: Icon(Icons.timer),
          ),
          BottomNavigationBarItem(
            label: 'Atividades',
            icon: Icon(Icons.sports_gymnastics),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(Icons.person_outline_rounded),
          ),
        ],
      ),
    );
  }
}
