import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

class KamariatiRatingAndShare extends StatelessWidget {
  const KamariatiRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating
        Row(
          children: [
            const Icon(FluentIcons.star_24_filled, color: Colors.amber, size: 24,),
            verticalSpace(KamariatiSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '5.0', style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyLarge)),
                  const TextSpan(text: '(199)'),
                ]
              )
            )
          ],
        ),
        // Share Button
        IconButton(onPressed: (){}, icon: const Icon(FluentIcons.share_ios_24_filled, size: KamariatiSizes.iconMd,))
      ],
    );
  }
}