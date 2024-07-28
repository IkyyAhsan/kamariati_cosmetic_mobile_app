import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, 
    required this.image, 
    required this.title, 
    required this.subtitle
    });

    final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 180),
      child: Column(
        children: [
          SizedBox(
            width: KamariatiHelperFunctions.screenWidth() * 0.9,
            height: KamariatiHelperFunctions.screenHeight() * 0.4,
            child: Image.asset(image),
          ),
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              textStyle: const TextStyle(
                fontSize: 29,
                wordSpacing: 0.25,
                fontWeight: FontWeight.w900,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpace(16),
          Text(
            subtitle,
            style: GoogleFonts.plusJakartaSans(
              textStyle: const TextStyle(
                fontSize: 16,
                wordSpacing: 0.25,
                fontWeight: FontWeight.w500,
              ),
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}