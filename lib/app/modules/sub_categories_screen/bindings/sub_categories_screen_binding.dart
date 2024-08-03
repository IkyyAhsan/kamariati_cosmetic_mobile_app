import 'package:get/get.dart';

import '../controllers/sub_categories_screen_controller.dart';

class SubCategoriesScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubCategoriesScreenController>(
      () => SubCategoriesScreenController(),
    );
  }
}
