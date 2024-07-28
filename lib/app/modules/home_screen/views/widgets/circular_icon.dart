import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiCircularIcon extends StatelessWidget {
  const KamariatiCircularIcon({
    super.key, 
    this.width, 
    this.height, 
    this.size,  
    this.color, 
    this.backgroundColor, 
    this.onPressed, 
    required this.icon,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: dark ? KamariatiColors.black.withOpacity(0.9) : KamariatiColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: (){}, 
        icon: const Icon(FluentIcons.heart_24_filled)
      ),
    );
  }
}