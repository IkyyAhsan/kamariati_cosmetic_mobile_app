import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/widgets/checkout.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_detail_screen/views/widgets/bottom_add_to_cart.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_detail_screen/views/widgets/product_attributes.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_detail_screen/views/widgets/product_detail_image_slider.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_detail_screen/views/widgets/product_meta_data.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_detail_screen/views/widgets/rating_share_widget.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_review_screen/views/product_review_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:readmore/readmore.dart';
import '../controllers/product_detail_screen_controller.dart';

class ProductDetailScreenView extends GetView<ProductDetailScreenController> {
  const ProductDetailScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const KamariatiBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Product Image Slider
            const KamariatiProductImageSlider(),
            // 2. Product details
            Padding(
              padding: const EdgeInsets.only(right: KamariatiSizes.defaultSpace, left: KamariatiSizes.defaultSpace, bottom: KamariatiSizes.defaultSpace,),
              child: Column(
                children: [
                  // Rating & Share
                  const KamariatiRatingAndShare(),

                  // Price, Title, Stock, & Brand
                  const KamariatiProductMetaData(),

                  // Attributes
                  const KamariatiProductAttributes(),
                  verticalSpace(KamariatiSizes.spaceBtwSections),

                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: Text("Checkout", style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),))
                  ),
                  verticalSpace(KamariatiSizes.spaceBtwSections),

                  // Description
                  const KamariatiSectionHeading(title: 'Deskripsi', showActionButton: false,),
                  verticalSpace(KamariatiSizes.spaceBtwItems),
                  const ReadMoreText(
                    "Ini adalah deskripsi produk untuk Wardah Colorfit Fresh Lip Ink Serum. Masih banyak lagi yang bisa ditambahkan, tetapi saya hanya berlatih saja dan tidak ada yang lain.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Lihat Semua',
                    trimExpandedText: 'Lebih sedikit',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),

                  // Reviews
                  const Divider(),
                  verticalSpace(KamariatiSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const KamariatiSectionHeading(title: 'Review (199)', showActionButton: false,),
                      IconButton(onPressed: () => Get.to(() => const ProductReviewScreenView()), icon: const Icon(FluentIcons.arrow_right_24_regular))
                    ],
                  ),
                  verticalSpace(KamariatiSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}