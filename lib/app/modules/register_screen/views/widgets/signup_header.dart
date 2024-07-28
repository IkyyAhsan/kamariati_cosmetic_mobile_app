import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiSignupHeader extends StatelessWidget {
  const KamariatiSignupHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      KamariatiTexts.signupTitle, 
      style: GoogleFonts.plusJakartaSans(
        textStyle: const TextStyle(
          fontSize: 34, // fontSize: 30 untuk 1 Line
          fontWeight: FontWeight.bold, 
          wordSpacing: 0.25
        ),
      ),
    );
  }
}