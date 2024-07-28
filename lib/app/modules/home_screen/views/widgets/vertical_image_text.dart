import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

class KamariatiVerticalImageText extends StatelessWidget {
  const KamariatiVerticalImageText({
    super.key, 
    required this.image, 
    required this.textColor,
    this.onTap, 
    required this.title,
  });

  final String image, title;
  final Color textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // Rectangle icon
          Container(
            width: 90,
            height: 90,
            padding: const EdgeInsets.all(KamariatiSizes.sm),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25)
            ),
            child: Center(
              child: Image(
                image: AssetImage(
                  image), 
                  fit: BoxFit.cover,
              ),
            ),
          ),
      
          // Categories Text
          verticalSpace(KamariatiSizes.spaceBtwItems / 2),
          SizedBox(
            width: 64,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                textStyle: TextStyle(
                  fontSize: 12,
                  wordSpacing: 1.25,
                  color: textColor,
                  fontWeight: FontWeight.w500
                )
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}