import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/brand_title_text_with_verification_icon.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/product_price_text.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/circular_icon.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/product_title_text.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_image.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiProductCartVertical extends StatelessWidget {
  const KamariatiProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: KamariatiColors.darkGrey.withOpacity(0.1),
              blurRadius: 50,
              spreadRadius: 7,
              offset: const Offset(0, 2)
            ),
          ],
          borderRadius: BorderRadius.circular(KamariatiSizes.productImageRadius),
          color: dark ? KamariatiColors.darkerGrey : KamariatiColors.white
        ),
        child: Column(
          children: [
            // Thumbnail, Wishlish, Discount
            KamariatiRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(KamariatiSizes.sm),
              backgroundColor: dark ? KamariatiColors.dark : KamariatiColors.light,
              child: Stack(
                children: [
                  // Thumbnail image
                  const KamariatiRoundedImage(
                    imageUrl: KamariatiImages.kamariatiProductImage1,
                    applyImageRadius: true,
                  ),
      
                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: KamariatiRoundedContainer(
                      radius: KamariatiSizes.sm,
                      backgroundColor: KamariatiColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: KamariatiSizes.sm, vertical: KamariatiSizes.xs),
                      child: Text(KamariatiTexts.discountProductImage1, style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.labelLarge!.apply(color: KamariatiColors.black)),),
                    ),
                  ),
      
                  /// -- Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: KamariatiCircularIcon(icon: FluentIcons.heart_24_filled, color: Colors.red,)),
                ],
              ),
            ),
            verticalSpace(KamariatiSizes.spaceBtwItems / 2),
      
            // Details
            Padding(
              padding: const EdgeInsets.only(left: KamariatiSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const KamariatiProductTitleText(
                    title: KamariatiTexts.nameProductImage1,
                    smallSize: true,
                  ),
                  verticalSpace(KamariatiSizes.spaceBtwItems / 2),
                  const KamariatiBrandTitleWithVerificationIcon(title: KamariatiTexts.categoryNameProductImage1),
                ],
              ),
            ),
            const Spacer(),

                  // Price Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      const Padding(
                        padding: EdgeInsets.only(left: KamariatiSizes.sm),
                        child: KamariatiProductPriceText(price: KamariatiTexts.priceProductImage1),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: KamariatiColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(KamariatiSizes.cardRadiusMd),
                            bottomRight: Radius.circular(KamariatiSizes.productImageRadius)
                          ),
                        ),
                        child: const SizedBox(
                          width: KamariatiSizes.iconLg * 1.2,
                          height: KamariatiSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              FluentIcons.add_24_regular, 
                              color: KamariatiColors.white,
                            ),
                          )
                        ),
                      )
                    ],
                  )
          ],
        ),
      ),
    );
  }
}