import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/cart_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/curved_edges/curved_edges_widget.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_image.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiProductImageSlider extends StatelessWidget {
  const KamariatiProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return KamariatiCurvedEdgesWidget(
      child: Container(
        color: dark ? KamariatiColors.darkerGrey : KamariatiColors.light,
        child: Stack(
          children: [
            // Main large image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(KamariatiSizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(KamariatiImages.kamariatiProductImage1))),
              ),
            ),
    
            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: KamariatiSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: KamariatiSizes.spaceBtwItems,),
                  itemBuilder: (_, index) => KamariatiRoundedImage(
                    width: 80,
                    backgroundColor: dark ? KamariatiColors.dark : KamariatiColors.white,
                    border: Border.all(color: KamariatiColors.primary),
                    padding: const EdgeInsets.all(KamariatiSizes.sm),
                    imageUrl: KamariatiImages.kamariatiProductImage1),
                ),
              ),
            ),
    
            // Appbar icons
            KamariatiAppBar(
              showBackArrow: true,
              actions: [
                IconButton(
                onPressed: () => Get.to(() => const CartScreenView()), 
                icon: const Icon(
                  FluentIcons.cart_24_regular,
                  size: 30,
                ),
              ),
              ],
            )
          ],
        ),
      ),
    );
  }
}