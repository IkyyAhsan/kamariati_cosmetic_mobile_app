import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';

class KamariatiGridLayout extends StatelessWidget {
  const KamariatiGridLayout({
    super.key, 
    required this.itemCount, 
    this.mainAxisExtent = 288, 
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: KamariatiSizes.gridViewSpacing,
        crossAxisSpacing: KamariatiSizes.gridViewSpacing,
      ), 
      itemBuilder: itemBuilder,
    );
  }
}