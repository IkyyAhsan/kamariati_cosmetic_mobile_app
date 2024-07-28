
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';

class BannerController extends GetxController {
  final imageList = <String>[].obs;
  final carouselController = CarouselController();
  final carousalCurrentIndex = 0.obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();

  /// -- Update Page Navigational Dots
  void updatePageIndicator(index){
    carousalCurrentIndex.value = index;
  }

  imageList.addAll([
    KamariatiImages.kamariatiPromoSlider1,
    KamariatiImages.kamariatiPromoSlider2,
    KamariatiImages.kamariatiPromoSlider3,
    KamariatiImages.kamariatiPromoSlider4,
    KamariatiImages.kamariatiPromoSlider5,
  ]);
  }
}