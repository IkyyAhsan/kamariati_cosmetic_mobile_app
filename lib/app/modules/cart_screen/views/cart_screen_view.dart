import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/widgets/cart_items.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/widgets/checkout.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import '../controllers/cart_screen_controller.dart';

class CartScreenView extends GetView<CartScreenController> {
  const CartScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KamariatiAppBar(
        title: Text("Cart", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.headlineSmall),),
      ),
      body: const Padding(
        padding: EdgeInsets.all(KamariatiSizes.defaultSpace),
        child: KamariatiCartItems(),
      ),

      // Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout Rp64.000')),
      ),
    );
  }
}