import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/brand_title_text_with_verification_icon.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/product_title_text.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_image.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiCartItem extends StatelessWidget {
  const KamariatiCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        KamariatiRoundedImage(
          imageUrl: KamariatiImages.kamariatiProductImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(KamariatiSizes.sm),
          backgroundColor: dark ? KamariatiColors.darkerGrey : KamariatiColors.light,
        ),
        horizontalSpaces(KamariatiSizes.spaceBtwItems),
    
        // Title, Price, and Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const KamariatiBrandTitleWithVerificationIcon(title: KamariatiTexts.brandNameProductImage1),
              const Flexible(child: KamariatiProductTitleText(title: KamariatiTexts.nameProductImage1, maxLines: 1,)),
          
              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                  TextSpan(text: 'Variasi ', style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodySmall)),
                  TextSpan(text: '01 Energy Shot', style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyLarge)),
                  ]
                )
              )
          
            ],
          ),
        )
      ],
    );
  }
}