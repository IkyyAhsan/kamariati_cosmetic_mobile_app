import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

class KamariatiBillingAddressSection extends StatelessWidget {
  const KamariatiBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KamariatiSectionHeading(
          title: 'Alamat Pengiriman',
          buttonTitle: 'Ganti',
          onPressed: (){},
        ),
        Text("Arsakha Al Gibran R.", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyLarge),),
            horizontalSpaces(KamariatiSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(FluentIcons.phone_20_regular, color: KamariatiColors.darkGrey, size: 16,),
            horizontalSpaces(KamariatiSizes.spaceBtwItems),
            Text("0822-4869-6800", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyMedium),)
          ],
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(FluentIcons.location_20_regular, color: KamariatiColors.darkGrey, size: 16,),
            horizontalSpaces(KamariatiSizes.spaceBtwItems),
            Text("Pesona Bali Residence Bojongsoang,", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyMedium),)
          ],
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems / 2),
      ],
    );
  }
}