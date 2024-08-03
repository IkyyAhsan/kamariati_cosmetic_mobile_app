import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/order_history_screen/views/widgets/orders_list.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';

import '../controllers/order_history_screen_controller.dart';

class OrderHistoryScreenView extends GetView<OrderHistoryScreenController> {
  const OrderHistoryScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: KamariatiAppBar(title: Text('Pesanan saya', style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.headlineSmall),), showBackArrow: true,),
      body: const Padding(
        padding: EdgeInsets.all(KamariatiSizes.defaultSpace),

        // Orders
        child: KamariatiOrderListItems(),
      ),
    );
  }
}
