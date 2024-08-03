import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/device/device_utility.dart';

class KamariatiRatingProgressIndicator extends StatelessWidget {
  const KamariatiRatingProgressIndicator({
    super.key, 
    required this.text, 
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyMedium),)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: KamariatiDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: KamariatiColors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(KamariatiColors.primary),
            ),
          ),
        )
      ],
    );
  }
}