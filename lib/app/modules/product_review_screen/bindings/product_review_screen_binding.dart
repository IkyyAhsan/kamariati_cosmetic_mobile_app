import 'package:get/get.dart';

import '../controllers/product_review_screen_controller.dart';

class ProductReviewScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductReviewScreenController>(
      () => ProductReviewScreenController(),
    );
  }
}
