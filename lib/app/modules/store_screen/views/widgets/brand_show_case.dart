import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/widgets/brand_card.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiBrandShowCase extends StatelessWidget {
  const KamariatiBrandShowCase({
    super.key, 
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return KamariatiRoundedContainer(
      showBorder: true,
      borderColor: KamariatiColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(KamariatiSizes.md),
      margin: const EdgeInsets.only(bottom: KamariatiSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with Product count
          const KamariatiBrandCard(showBorder: false),
          verticalSpace(KamariatiSizes.spaceBtwItems),
          // Brand top 3 product images
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context){
    return Expanded(
      child: KamariatiRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(KamariatiSizes.md),
        margin: const EdgeInsets.only(right: KamariatiSizes.sm),
        backgroundColor: KamariatiHelperFunctions.isDarkMode(context) ? KamariatiColors.darkerGrey : KamariatiColors.light,
        child: Image(fit: BoxFit.contain, image: AssetImage(image),),
      )
    );
  }
}
