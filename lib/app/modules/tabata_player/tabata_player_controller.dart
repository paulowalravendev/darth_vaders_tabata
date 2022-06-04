import 'package:darth_vaders_tabata/app/routes/routes.dart';
import 'package:get/get.dart';

class TabataPlayerController extends GetxController {
  TabataPlayerController();

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;

  void _onFinished() {
    Get.offNamed(Routes.TABATA_FEEDBACK);
  }
}
