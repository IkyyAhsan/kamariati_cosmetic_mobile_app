import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiSectionHeading extends StatelessWidget {
  const KamariatiSectionHeading({
    super.key, 
    this.showActionButton = true, 
    required this.title, 
    this.buttonTitle = "Lihat semua", 
    this.onPressed,
  });

  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.plusJakartaSans(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if(showActionButton) TextButton(
          onPressed: onPressed, 
          child: Text(
            buttonTitle,
            maxLines: 1,
            style: GoogleFonts.plusJakartaSans(
              textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: dark ? KamariatiColors.light : KamariatiColors.dark
              )
            ),
            )
          ),
      ],
    );
  }
}