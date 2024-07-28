import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiTermsAndConditions extends StatelessWidget {
  const KamariatiTermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true, onChanged: (value) {},
          ),
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${KamariatiTexts.iAgreeTo} ',
                style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 13, wordSpacing: 0.4))
              ),
              TextSpan(
                text: KamariatiTexts.privacyPolicy,
                style: GoogleFonts.plusJakartaSans(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    wordSpacing: 0.25,
                    color: dark ? KamariatiColors.white : KamariatiColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? KamariatiColors.white : KamariatiColors.primary
                  )
                )
              ),
              TextSpan(
                text: ' ${KamariatiTexts.and} ',
                style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 13, wordSpacing: 0.4))
              ),
              TextSpan(
                text: KamariatiTexts.termsOfUse,
                style: GoogleFonts.plusJakartaSans(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    wordSpacing: 0.25,
                    color: dark ? KamariatiColors.white : KamariatiColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? KamariatiColors.white : KamariatiColors.primary
                  )
                )
              ),
            ]
          )
        )
      ],
    );
  }
}
