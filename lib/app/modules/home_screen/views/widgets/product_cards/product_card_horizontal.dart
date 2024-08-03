import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/brand_title_text_with_verification_icon.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/product_price_text.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/product_title_text.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_image.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiProductCardHorizontal extends StatelessWidget {
  const KamariatiProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(KamariatiSizes.productImageRadius),
        color: dark ? KamariatiColors.darkerGrey : KamariatiColors.softGrey
      ),
      child: Row(
        children: [
          // Thumbnail
          KamariatiRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(KamariatiSizes.sm),
            backgroundColor: dark ? KamariatiColors.dark : KamariatiColors.light,
            child: Stack(
              children: [
                // Thumbnail image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: KamariatiRoundedImage(imageUrl: KamariatiImages.kamariatiProductImage1, applyImageRadius: true,)),
                
                // Sale Tag
                  Positioned(
                    top: 12,
                    child: KamariatiRoundedContainer(
                      radius: KamariatiSizes.sm,
                      backgroundColor: KamariatiColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: KamariatiSizes.sm, vertical: KamariatiSizes.xs),
                      child: Text(KamariatiTexts.discountProductImage1, style: GoogleFonts.plusJakartaSans(
                        textStyle: Theme.of(context).textTheme.labelLarge!.apply(color: KamariatiColors.black)),),
                    ),
                  ),
              ],
            ),
          ),

          // Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: KamariatiSizes.sm, left: KamariatiSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const KamariatiProductTitleText(title: KamariatiTexts.nameProductImage1, smallSize: true,),
                      verticalSpace(KamariatiSizes.spaceBtwItems / 2),
                      const KamariatiBrandTitleWithVerificationIcon(title: KamariatiTexts.brandNameProductImage1),
                    ],
                  ),

                  const Spacer(),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pricing
                      const Flexible(child: KamariatiProductPriceText(price: '64.000')),

                      // Add to Cart Button
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
          )
        ],
      ),
    );
  }
}