import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/widgets/billing_address_section.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/widgets/billing_amount_section.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/widgets/billing_payment_section.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/widgets/cart_items.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/widgets/coupon_code.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: KamariatiAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.headlineSmall),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
        child: Column(
          children: [
            // Items in Cart
            const KamariatiCartItems(showAddRemoveButtons: false,),
            verticalSpace(KamariatiSizes.spaceBtwSections),

            // Coupon TextField
            const KamariatiCouponCode(),
            verticalSpace(KamariatiSizes.spaceBtwSections),

            // Billing Section
            KamariatiRoundedContainer(
              showBorder: true,
              padding: const EdgeInsets.all(KamariatiSizes.md),
              backgroundColor: dark ? KamariatiColors.black : KamariatiColors.white,
              child: Column(
                children: [
                  // Pricing
                  const KamariatiBillingAmountSection(),
                  verticalSpace(KamariatiSizes.spaceBtwItems),

                  // Divider
                  const Divider(),
                  verticalSpace(KamariatiSizes.spaceBtwItems),

                  // Payment Methods
                  const KamariatiBillingPaymentSection(),
                  verticalSpace(KamariatiSizes.spaceBtwItems),

                  // Address
                  const KamariatiBillingAddressSection()
                ],
              ),
            )
          ],
        ),
      ),
    
            // Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => KamariatiHelperFunctions.showConfirmationDialog(context),
        child: const Text('Checkout Rp64.000')),
      ),
    );
  }

  
}