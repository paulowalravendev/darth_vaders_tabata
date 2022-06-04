import 'package:darth_vaders_tabata/app/routes/pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(
      initialRoute: '/splash',
      getPages: AppPages.pages,
    ));
