import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/circular_icon.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiBottomAddToCart extends StatelessWidget {
  const KamariatiBottomAddToCart({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: KamariatiSizes.defaultSpace, vertical: KamariatiSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? KamariatiColors.darkerGrey : KamariatiColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(KamariatiSizes.cardRadiusLg),
          topRight: Radius.circular(KamariatiSizes.cardRadiusLg),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const KamariatiCircularIcon(
                icon: FluentIcons.subtract_24_regular,
                backgroundColor: KamariatiColors.darkGrey,
                width: 40,
                height: 40,
                color: KamariatiColors.white,
              ),
              horizontalSpaces(KamariatiSizes.spaceBtwItems),
              Text('2', style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.titleSmall),),
              horizontalSpaces(KamariatiSizes.spaceBtwItems),
              const KamariatiCircularIcon(
                icon: FluentIcons.add_24_regular,
                backgroundColor: KamariatiColors.black,
                width: 40,
                height: 40,
                color: KamariatiColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(KamariatiSizes.md),
              backgroundColor: KamariatiColors.black,
              side: const BorderSide(color: KamariatiColors.black),
            ),
            child: const Text('Tambahkan ke keranjang')),
        ],
      ),
    );
  }
}