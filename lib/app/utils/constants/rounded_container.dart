import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';

class KamariatiRoundedContainer extends StatelessWidget {
  const KamariatiRoundedContainer({
    super.key, 
    this.child, 
    this.width, 
    this.height, 
    this.margin,
    this.padding, 
    this.showBorder = false, 
    this.radius = KamariatiSizes.cardRadiusLg, 
    this.backgroundColor = KamariatiColors.white,   
    this.borderColor = KamariatiColors.borderPrimary, 
    });

    final double? width;
    final double? height;
    final double radius;
    final Widget? child;
    final bool showBorder;
    final Color borderColor;
    final Color backgroundColor;
    final EdgeInsetsGeometry? padding;
    final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}