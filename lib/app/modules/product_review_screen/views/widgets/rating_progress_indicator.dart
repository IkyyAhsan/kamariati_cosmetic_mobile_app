import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_review_screen/views/widgets/product_indicator_and_rating.dart';

class KamariatiOverallProductRating extends StatelessWidget {
  const KamariatiOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "5.0", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.displayLarge),
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              KamariatiRatingProgressIndicator(text: '5', value: 1.0,),
              KamariatiRatingProgressIndicator(text: '4', value: 0.9,),
              KamariatiRatingProgressIndicator(text: '3', value: 0.8,),
              KamariatiRatingProgressIndicator(text: '2', value: 0.2),
              KamariatiRatingProgressIndicator(text: '1', value: 0.1,),
            ],
          ),
        )
      ],
    );
  }
}