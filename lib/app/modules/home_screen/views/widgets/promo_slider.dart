import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/controllers/widgets/banner_controller.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';

class KamariatiPromoSlider extends StatelessWidget {
  const KamariatiPromoSlider({
    super.key,
    required this.bannerController,
  });

  final BannerController bannerController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KamariatiSizes.defaultSpace),
      child: Column(
        children: [
          CarouselSlider(
            carouselController: bannerController.carouselController,
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              enlargeCenterPage: true,
              height: 230,
              initialPage: 0,
              onPageChanged: (index, _) {
                bannerController.carousalCurrentIndex.value = index;
              },
            ),
            items: bannerController.imageList.map((item) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                margin: const EdgeInsets.symmetric(horizontal: 1),
                child: Center(
                  child: Image.asset(
                    item,
                  ),
                ),
              );
            },).toList(),
          ),
          Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i < bannerController.imageList.length; i++)
                  Container(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    color: bannerController.carousalCurrentIndex.value == i ? KamariatiColors.accent : KamariatiColors.darkGrey,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
