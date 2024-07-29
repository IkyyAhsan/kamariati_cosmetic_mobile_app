import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/controllers/store_screen_controller.dart';

class StoreScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreScreenController>(
      () => StoreScreenController(),
    );
  }
}
