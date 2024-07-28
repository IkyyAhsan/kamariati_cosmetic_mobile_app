import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiProductPriceText extends StatelessWidget {
  const KamariatiProductPriceText({
    super.key, 
    this.currencySign = KamariatiTexts.currencySign, 
     this.maxLines = 1, 
    this.isLarge = false, 
     this.lineThrough = false, 
     required this.price,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge 
      ? GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null))
      : GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null))
    );
  }
}