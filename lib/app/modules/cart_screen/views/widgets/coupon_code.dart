import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiCouponCode extends StatelessWidget {
  const KamariatiCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return KamariatiRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? KamariatiColors.dark : KamariatiColors.white,
      padding: const EdgeInsets.only(top: KamariatiSizes.sm, bottom: KamariatiSizes.sm, right: KamariatiSizes.sm, left: KamariatiSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Punya kode promo? masukkan disini",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
    
          // Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? KamariatiColors.white.withOpacity(0.5) : KamariatiColors.dark.withOpacity(0.5),
                backgroundColor: KamariatiColors.grey.withOpacity(0.2),
                side: BorderSide(color: KamariatiColors.grey.withOpacity(0.1))
              ),
              child: const Text('Terapkan')))
        ],
      ),
    );
  }
}