import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/brand_title_text_with_verification_icon.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/product_price_text.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/widgets/circular_image.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/enums.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/product_title_text.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiProductMetaData extends StatelessWidget {
  const KamariatiProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          children: [
            // Sale Tag
            KamariatiRoundedContainer(
              radius: KamariatiSizes.sm,
              backgroundColor: KamariatiColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: KamariatiSizes.sm, vertical: KamariatiSizes.xs),
              child: Text(KamariatiTexts.discountProductImage1, style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.labelLarge!.apply(color: KamariatiColors.black)),),
            ),
            horizontalSpaces(KamariatiSizes.spaceBtwItems),

            // Price
            Text('Rp80.000', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            horizontalSpaces(KamariatiSizes.spaceBtwItems),
            const KamariatiProductPriceText(price: KamariatiTexts.priceProductImage1, isLarge: true,),
          ],
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems / 1.5),

        // Title
        const KamariatiProductTitleText(title: KamariatiTexts.nameProductImage1),
        verticalSpace(KamariatiSizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const KamariatiProductTitleText(title: 'Status'),
            horizontalSpaces(KamariatiSizes.spaceBtwItems),
            Text('Tersedia', style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.titleMedium),),
          ],
        ),

        // Brand
        const Row(
          children: [
            KamariatiCircularImage(
              width: 32,
              height: 32,
              image: KamariatiImages.wardahlogo
            ),
            KamariatiBrandTitleWithVerificationIcon(
              title: KamariatiTexts.wardahBrand, 
              brandTextSizes: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}