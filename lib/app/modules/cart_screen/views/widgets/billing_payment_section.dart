import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiBillingPaymentSection extends StatelessWidget {
  const KamariatiBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        KamariatiSectionHeading(
          title: 'Metode Pembayaran',
          buttonTitle: 'Ganti',
          onPressed: (){},
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems / 2),
        Row(
          children: [
            KamariatiRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? KamariatiColors.light : KamariatiColors.white,
              padding: const EdgeInsets.all(KamariatiSizes.sm),
              child: const Image(image: AssetImage(KamariatiImages.shopeePay), fit: BoxFit.contain,),
            ),
            horizontalSpaces(KamariatiSizes.spaceBtwItems / 2),
            Text("ShopeePay", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyLarge),)
          ],
        )
      ],
    );
  }
}