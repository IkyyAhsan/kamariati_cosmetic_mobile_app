import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/all_product_screen/views/widgets/sortable_products.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import '../controllers/all_product_screen_controller.dart';

class AllProductScreenView extends GetView<AllProductScreenController> {
  const AllProductScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KamariatiAppBar(
        title: Text(KamariatiTexts.trendingProduct), 
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(KamariatiSizes.defaultSpace),
        child: KamariatiSortableProducts(),
      ),
    );
  }
}