import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/login_screen/views/login_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(FluentIcons.dismiss_20_regular))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
        child: Column(
          children: [
            // Image
            Lottie.asset(
              KamariatiImages.forgetPasswordIllustration, 
              width: KamariatiHelperFunctions.screenWidth() * 0.6
            ),
            verticalSpace(KamariatiSizes.spaceBtwSections),

            // Title & Subtitle
            Text(
              KamariatiTexts.changeYourPasswordTitle, 
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
              KamariatiTexts.changeYourPasswordSubTitle, 
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
                onPressed: () => Get.to(() => const LoginScreenView()), 
                child: const Text(KamariatiTexts.done)
              ),
            ),
            verticalSpace(KamariatiSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){}, 
                child: const Text(KamariatiTexts.resendEmail)
              ),
            ),
          ],
        ),
        ),
    );
  }
}