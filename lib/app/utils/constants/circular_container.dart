import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';

class KamariatiCircularContainer extends StatelessWidget {
  const KamariatiCircularContainer({
    super.key, 
    this.child, 
    this.width = 400, 
    this.height = 400, 
    this.radius = 400, 
    this.padding = 0, 
    this.backgroundColor = KamariatiColors.white
    });

    final double? width;
    final double? height;
    final double radius;
    final double padding;
    final Widget? child;
    final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}