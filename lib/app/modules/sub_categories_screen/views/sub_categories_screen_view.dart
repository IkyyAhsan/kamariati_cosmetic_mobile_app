import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/product_cards/product_card_horizontal.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_image.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

import '../controllers/sub_categories_screen_controller.dart';

class SubCategoriesScreenView extends GetView<SubCategoriesScreenController> {
  const SubCategoriesScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KamariatiAppBar(
        title: Text("Skincare"), 
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const KamariatiRoundedImage(
                width: double.infinity,
                imageUrl: KamariatiImages.kamariatiPromoSlider1,
                applyImageRadius: true,
              ),
              verticalSpace(KamariatiSizes.spaceBtwSections),

              // Sub Categories
              Column(
                children: [
                  // Heading
                  KamariatiSectionHeading(
                    title: "Skincare Products",
                    onPressed: (){},
                    ),
                    verticalSpace(KamariatiSizes.spaceBtwItems / 2),

                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(width: KamariatiSizes.spaceBtwItems),
                        itemBuilder: (context, index) => const KamariatiProductCardHorizontal()),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
