import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KamariatiProductTitleText extends StatelessWidget {
  const KamariatiProductTitleText({
    super.key, 
    required this.title, 
    this.smallSize = false, 
    this.maxLines = 2, 
    this.textAlign = TextAlign.left,
    });

    final String title;
    final bool smallSize;
    final int maxLines;
    final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.plusJakartaSans(
        textStyle: smallSize 
        ? Theme.of(context).textTheme.labelLarge 
        : Theme.of(context).textTheme.titleSmall,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}