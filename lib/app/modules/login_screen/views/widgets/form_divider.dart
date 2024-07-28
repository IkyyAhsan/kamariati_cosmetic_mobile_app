import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiFormDivider extends StatelessWidget {
  const KamariatiFormDivider({
    super.key, required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? KamariatiColors.darkGrey : KamariatiColors.grey, thickness: 0.5, indent: 40, endIndent: 10,)),
        Text(dividerText, style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, wordSpacing: 1.25)),),
        Flexible(child: Divider(color: dark ? KamariatiColors.darkGrey : KamariatiColors.grey, thickness: 0.5, indent: 10, endIndent: 40,))
      ],
    );
  }
}