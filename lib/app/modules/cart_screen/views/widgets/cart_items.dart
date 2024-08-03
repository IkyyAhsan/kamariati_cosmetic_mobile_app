import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/widgets/add_remove_button.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/widgets/cart_item.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/product_price_text.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

class KamariatiCartItems extends StatelessWidget {
  const KamariatiCartItems({
    super.key, 
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: KamariatiSizes.spaceBtwSections,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          // Cart Item
          const KamariatiCartItem(),
          if (showAddRemoveButtons) verticalSpace(KamariatiSizes.spaceBtwItems),

          // Add remove button Row with total price
          if (showAddRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Extra Space
                    horizontalSpaces(70),
                    
                    // Add Remove Button
                    const KamariatiProductQuantityWithAddRemove(),
                  ],
                ),

                // Product total price
                const KamariatiProductPriceText(price: '64.000'),
              ],
            )
        ],
      )
    );
  }
}