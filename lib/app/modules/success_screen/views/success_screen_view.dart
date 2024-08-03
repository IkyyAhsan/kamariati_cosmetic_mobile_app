import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spacing_styles.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

import '../controllers/success_screen_controller.dart';

class SuccessScreenView extends GetView<SuccessScreenController> {
  const SuccessScreenView({
    super.key,
    required this.image, 
    required this.title, 
    required this.subtitle, 
    required this.onPressed,
  });

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: KamariatiSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            // Image
            Lottie.asset(KamariatiImages.successfulPaymentIcon, width: KamariatiHelperFunctions.screenWidth() * 0.8, fit: BoxFit.contain),
            verticalSpace(KamariatiSizes.spaceBtwSections * 2),

            // Title and Subtitle
            Text(
              title, 
              style: GoogleFonts.plusJakartaSans(
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                )
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpace(KamariatiSizes.spaceBtwItems),
            Text(
              subtitle, 
              style: GoogleFonts.plusJakartaSans(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                )
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpace(KamariatiSizes.spaceBtwSections),

            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: onPressed, child: const Text(KamariatiTexts.kamariatiContinue)),
            )
          ],
        ),
      ),
    );
  }
}
