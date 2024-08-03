import 'package:get/get.dart';

import '../controllers/order_history_screen_controller.dart';

class OrderHistoryScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderHistoryScreenController>(
      () => OrderHistoryScreenController(),
    );
  }
}
