import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiSingleAddress extends StatelessWidget {
  const KamariatiSingleAddress({
    super.key, 
    required this.selectedAddress,
    });

    final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return KamariatiRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(KamariatiSizes.md),
      backgroundColor: selectedAddress ? KamariatiColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress 
      ? Colors.transparent 
      : dark 
          ? KamariatiColors.darkerGrey
          : KamariatiColors.grey,
      margin: const EdgeInsets.only(bottom: KamariatiSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? FluentIcons.checkmark_circle_24_regular : null,
              color: selectedAddress
                  ? dark
                      ? KamariatiColors.light
                      : KamariatiColors.dark
                  : null
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Arsakha Al Gibran R.',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.titleLarge),
              ),
              verticalSpace(KamariatiSizes.sm / 2),
              const Text('0822-4869-6800', maxLines: 1, overflow: TextOverflow.ellipsis,),
              verticalSpace(KamariatiSizes.sm / 2),
              const Text('Bl. A2 No.6, Bojongsoang, Kec. Bojongsoang, Kabupaten Bandung, Jawa Barat 40288', softWrap: true,)
            ],
          )
        ],
      ),
    );
  }
}