import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/brand_title_text_with_verification_icon.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/widgets/circular_image.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/enums.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiBrandCard extends StatelessWidget {
  const KamariatiBrandCard({
    super.key, 
    required this.showBorder, 
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
    child: KamariatiRoundedContainer(
      padding: const EdgeInsets.all(KamariatiSizes.sm),
      showBorder: showBorder,
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          // Icon
          const KamariatiCircularImage(
            isNetworkImage: false,
            image: KamariatiImages.wardahlogo,
            backgroundColor: Colors.transparent,
          ),
          horizontalSpaces(KamariatiSizes.spaceBtwItems / 2),
          // Text
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const KamariatiBrandTitleWithVerificationIcon(title: KamariatiTexts.wardahBrand, brandTextSizes: TextSizes.large,),
              Text(
                KamariatiTexts.totalProduk,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.plusJakartaSans(
                  textStyle: Theme.of(context).textTheme.labelMedium
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