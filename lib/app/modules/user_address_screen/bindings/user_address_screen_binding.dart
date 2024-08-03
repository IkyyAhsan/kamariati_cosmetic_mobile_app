import 'package:get/get.dart';

import '../controllers/user_address_screen_controller.dart';

class UserAddressScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserAddressScreenController>(
      () => UserAddressScreenController(),
    );
  }
}
