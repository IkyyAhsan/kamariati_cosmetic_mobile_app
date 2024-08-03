import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/all_brand_screen/views/widgets/brand_products.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/layout/grid_layout.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/widgets/brand_card.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

import '../controllers/all_brand_screen_controller.dart';

class AllBrandScreenView extends GetView<AllBrandScreenController> {
  const AllBrandScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KamariatiAppBar(
        title: Text('Brand'), 
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              const KamariatiSectionHeading(title: 'Brands', showActionButton: false,),
              verticalSpace(KamariatiSizes.spaceBtwItems),

              // Brands
              KamariatiGridLayout(
                itemCount: 10, 
                mainAxisExtent: 80,
                itemBuilder: (context, index) => KamariatiBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const KamariatiBrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
