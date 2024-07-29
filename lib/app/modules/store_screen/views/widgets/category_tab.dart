import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/layout/grid_layout.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/product_cards/product_card_vertical.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/widgets/brand_show_case.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiCategoryTab extends StatelessWidget {
  const KamariatiCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
          child: Column(
            children: [
              // Brand
              const KamariatiBrandShowCase(images: [KamariatiImages.kamariatiProductImage1, KamariatiImages.kamariatiProductImage1, KamariatiImages.kamariatiProductImage1],),
              const KamariatiBrandShowCase(images: [KamariatiImages.kamariatiProductImage1, KamariatiImages.kamariatiProductImage1, KamariatiImages.kamariatiProductImage1],),
              verticalSpace(KamariatiSizes.spaceBtwItems),
              // Products
              KamariatiSectionHeading(title: KamariatiTexts.youMayAlsoLike, onPressed: (){},),
              verticalSpace(KamariatiSizes.spaceBtwItems),
        
              KamariatiGridLayout(itemCount: 4, itemBuilder: (_, index) => const KamariatiProductCartVertical()),
              verticalSpace(KamariatiSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}