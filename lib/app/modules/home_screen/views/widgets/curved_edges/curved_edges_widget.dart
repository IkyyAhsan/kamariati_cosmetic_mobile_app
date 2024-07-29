import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/curved_edges/curved_edges.dart';

class KamariatiCurvedEdgesWidget extends StatelessWidget {
  const KamariatiCurvedEdgesWidget({
    super.key, this.child
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: KamariatiCustomCurvedEdges(),
      child: child
      );
  }
}