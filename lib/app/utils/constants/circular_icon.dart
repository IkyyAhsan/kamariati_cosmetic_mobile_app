import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiCircularIcon extends StatelessWidget {
  const KamariatiCircularIcon({
    super.key,
    required this.icon, 
    this.width, 
    this.height, 
    this.size = KamariatiSizes.lg, 
    this.color, 
    this.backgroundColor, 
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null 
        ? backgroundColor! 
        : KamariatiHelperFunctions.isDarkMode(context) 
            ? KamariatiColors.black.withOpacity(0.9) 
            : KamariatiColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon:  Icon(icon, color: color, size: size,)),
    );
  }
}