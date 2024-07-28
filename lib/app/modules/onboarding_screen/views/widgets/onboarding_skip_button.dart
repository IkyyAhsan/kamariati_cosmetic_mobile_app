import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/onboarding_screen/controllers/onboarding_screen_controller.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiOnboardingSkipButton extends StatelessWidget {
  const KamariatiOnboardingSkipButton({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: kBottomNavigationBarHeight,
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextButton(
          onPressed: () => OnboardingScreenController.instance.skipPage(),
          child: Text(
            KamariatiTexts.skip, 
            style: GoogleFonts.plusJakartaSans(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}