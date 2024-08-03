import 'package:get/get.dart';

import '../controllers/all_brand_screen_controller.dart';

class AllBrandScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllBrandScreenController>(
      () => AllBrandScreenController(),
    );
  }
}
