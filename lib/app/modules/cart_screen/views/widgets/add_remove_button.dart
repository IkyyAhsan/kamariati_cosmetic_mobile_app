import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/circular_icon.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiProductQuantityWithAddRemove extends StatelessWidget {
  const KamariatiProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        KamariatiCircularIcon(
          icon: FluentIcons.subtract_20_regular,
          width: 32,
          height: 32,
          size: KamariatiSizes.md,
          color: dark ? KamariatiColors.white : KamariatiColors.black,
          backgroundColor: dark ? KamariatiColors.darkerGrey : KamariatiColors.light,
        ),
    
        horizontalSpaces(KamariatiSizes.spaceBtwItems),
        Text('2', style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.titleSmall),),
        horizontalSpaces(KamariatiSizes.spaceBtwItems),
        
        const KamariatiCircularIcon(
          icon: FluentIcons.add_20_regular,
          width: 32,
          height: 32,
          size: KamariatiSizes.md,
          color: KamariatiColors.white,
          backgroundColor: KamariatiColors.primary,
        ),
      ],
    );
  }
}