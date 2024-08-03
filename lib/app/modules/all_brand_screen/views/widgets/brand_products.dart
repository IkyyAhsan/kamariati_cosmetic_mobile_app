import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/modules/all_product_screen/views/widgets/sortable_products.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/widgets/brand_card.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiBrandProducts extends StatelessWidget {
  const KamariatiBrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KamariatiAppBar(
        title: Text(KamariatiTexts.brandNameProductImage1),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
          child: Column(
            children: [
              // Brand 
              const KamariatiBrandCard(showBorder: true),
              verticalSpace(KamariatiSizes.spaceBtwSections),

              const KamariatiSortableProducts()
            ],
          ),
          ),
      ),
    );
  }
}