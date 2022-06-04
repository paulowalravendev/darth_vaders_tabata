import 'package:darth_vaders_tabata/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:darth_vaders_tabata/app/routes/pages.dart';

void main() {
  return runApp(
    GetMaterialApp(
      initialRoute: Routes.SPLASH,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
    ),
  );
}
