import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spacing_styles.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key, 
    required this.image, 
    required this.title, 
    required this.subTitle, 
    required this.onPressed,
    });

    final String image, title, subTitle;
    final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: KamariatiSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            // Image
            Lottie.asset(
              image, 
              width: KamariatiHelperFunctions.screenWidth() * 0.6
            ),
            verticalSpace(KamariatiSizes.spaceBtwSections),

            // Title & Subtitle
            Text(
              title, 
              style: GoogleFonts.plusJakartaSans(
                textStyle: const TextStyle(
                  fontSize: 25, 
                  wordSpacing: 0.25, 
                  fontWeight: FontWeight.w700
                ),
              ), 
              textAlign: TextAlign.center,
            ),
            verticalSpace(KamariatiSizes.spaceBtwItems),
            Text(
              subTitle, 
              style: GoogleFonts.plusJakartaSans(
                textStyle: Theme.of(context).textTheme.labelMedium
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpace(KamariatiSizes.spaceBtwSections),

            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed, 
                child: const Text(KamariatiTexts.kamariatiContinue)
              ),
            ),
          ],
        ),
      ),
    );
  }
}