import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/product_price_text.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_detail_screen/controllers/product_detail_screen_controller.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_detail_screen/views/widgets/choice_chip.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/product_title_text.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiProductAttributes extends StatelessWidget {
  const KamariatiProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attributes Pricing & Description
        KamariatiRoundedContainer(
          padding: const EdgeInsets.all(KamariatiSizes.md),
          backgroundColor: dark ? KamariatiColors.darkerGrey : KamariatiColors.grey,
          child: Column(
            children: [
              // Title, Price, and Stock Status
              Row(
                children: [
                  const KamariatiSectionHeading(title: "Variasi", showActionButton: false,),
                  horizontalSpaces(KamariatiSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const KamariatiProductTitleText(title: 'Harga : ', smallSize: true,),
                          // Actual Price
                          Text(
                            "Rp80.000",
                            style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                          ),
                          horizontalSpaces(KamariatiSizes.spaceBtwItems),

                          // Sale Price
                          const KamariatiProductPriceText(price: '64.000')
                        ],
                      ),

                      // Stock
                      Row(
                        children: [
                          const KamariatiProductTitleText(title: 'Stok : ', smallSize: true,),
                          Text("Tersedia", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.titleMedium),)
                        ],
                      )
                    ],
                  ),
                  
                ],
              ),

              // Variation Description
              const KamariatiProductTitleText(
                title: "Ini adalah deskripsi produk dan panjangnya dapat mencapai maksimal 4 baris",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),

        verticalSpace(KamariatiSizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const KamariatiSectionHeading(title: "Variasi", showActionButton: false),
            verticalSpace(KamariatiSizes.spaceBtwItems / 2),
            const KamariatiDropdownProductDetails(),
            const KamariatiSelectedChoiceChip(),
          ],
        ),
      ],
    );
  }
}

class KamariatiSelectedChoiceChip extends StatelessWidget {
  const KamariatiSelectedChoiceChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductDetailScreenController());
    return Obx(() {
        return Column(
          children: [
            verticalSpace(KamariatiSizes.spaceBtwSections / 2),
            Wrap(
              spacing: controller.products.length.toDouble(),
              children: controller.products.map((label) {
                return KamariatiChoiceChip(
                  text: label,
                  selected: controller.selectedProduct.value == label,
                  onSelected: (bool selected) {
                    if (selected) {
                      controller.selectedProduct.value = label;
                    } else{
                      controller.selectedProduct.value = '';
                    }
                  },
                );
              }).toList(),
            ),
          ],
        );
    });
  }
}

class KamariatiDropdownProductDetails extends StatelessWidget {
  const KamariatiDropdownProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductDetailScreenController());
    return Obx(() => DropdownButton<String>(
      value: controller.selectedProduct.value.isEmpty ? null : controller.selectedProduct.value,
      hint: const Text('Pilih Varian'),
      items: controller.products.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            textAlign: TextAlign.center,
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        controller.selectedProduct.value = newValue ?? '';
      },
    ));
  }
}