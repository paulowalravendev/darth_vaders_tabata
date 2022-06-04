import 'package:darth_vaders_tabata/app/modules/create_tabata/create_tabata_binding.dart';
import 'package:darth_vaders_tabata/app/modules/create_tabata/create_tabata_page.dart';
import 'package:darth_vaders_tabata/app/modules/first_access/first_access_binding.dart';
import 'package:darth_vaders_tabata/app/modules/first_access/first_access_page.dart';
import 'package:darth_vaders_tabata/app/modules/home/home_binding.dart';
import 'package:darth_vaders_tabata/app/modules/home/home_page.dart';
import 'package:darth_vaders_tabata/app/modules/splash/splash_binding.dart';
import 'package:darth_vaders_tabata/app/modules/splash/splash_page.dart';
import 'package:darth_vaders_tabata/app/modules/training_feedback/training_feedback_binding.dart';
import 'package:darth_vaders_tabata/app/modules/training_feedback/training_feedback_page.dart';
import 'package:darth_vaders_tabata/app/modules/tabata_player/tabata_player_binding.dart';
import 'package:darth_vaders_tabata/app/modules/tabata_player/tabata_player_page.dart';
import 'package:darth_vaders_tabata/app/routes/routes.dart';
import 'package:get/route_manager.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.FIRST_ACCESS,
      page: () => FirstAccessPage(),
      binding: FirstAccessBinding(),
    ),
    GetPage(
      name: Routes.CREATE_TABATA,
      page: () => CreateTabataPage(),
      binding: CreateTabataBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.TABATA_PLAYER,
      page: () => TabataPlayerPage(),
      binding: TabataPlayerBinding(),
    ),
    GetPage(
      name: Routes.TABATA_FEEDBACK,
      page: () => TrainingFeedbackPage(),
      binding: TrainingFeedbackBinding(),
    ),
  ];
}
