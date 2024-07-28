import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

class KamariatiSocialButtons extends StatelessWidget {
  const KamariatiSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: KamariatiColors.grey
            ),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(
              width: KamariatiSizes.iconMd,
              height: KamariatiSizes.iconMd,
              image: AssetImage(KamariatiImages.google)
            )
          ),
        ),
        horizontalSpaces(KamariatiSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: KamariatiColors.grey
            ),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(
              width: KamariatiSizes.iconMd,
              height: KamariatiSizes.iconMd,
              image: AssetImage(KamariatiImages.facebook)
            )
          ),
        ),
      ],
    );
  }
}