import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/curved_edges/curved_edges_widget.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/circular_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';

class KamariatiPrimaryHeaderContainer extends StatelessWidget {
  const KamariatiPrimaryHeaderContainer({
    super.key, 
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return KamariatiCurvedEdgesWidget(
      child: Container(
        color: KamariatiColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(top: -150, right: -250, child: KamariatiCircularContainer(backgroundColor: KamariatiColors.textWhite.withOpacity(0.1),),),
            Positioned(top: 100, right: -300, child: KamariatiCircularContainer(backgroundColor: KamariatiColors.textWhite.withOpacity(0.1))),
            child
          ],
        ),
      ),
    );
  }
}