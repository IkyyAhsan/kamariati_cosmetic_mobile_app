import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';

class KamariatiLoginHeader extends StatelessWidget {
  const KamariatiLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        height: 150,
        image: AssetImage(
          KamariatiImages.lightDarkAppLogo
        ),
      ),
    );
  }
}