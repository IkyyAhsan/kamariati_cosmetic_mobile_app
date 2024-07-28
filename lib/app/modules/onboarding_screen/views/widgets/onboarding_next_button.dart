import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/onboarding_screen/controllers/onboarding_screen_controller.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiOnboardingNextButton extends StatelessWidget {
  const KamariatiOnboardingNextButton({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: kBottomNavigationBarHeight + 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: KamariatiColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
            onPressed: () => OnboardingScreenController.instance.nextPage(), 
            child: Text(
              KamariatiTexts.kamariatiContinue, 
              style: GoogleFonts.plusJakartaSans(
                textStyle: const TextStyle(
                  fontSize: KamariatiSizes.spaceBtwItems,
                  fontWeight: FontWeight.w500,
                  color: KamariatiColors.textWhite
                  )),)
            ),
        ),
      ),
    );
  }
}