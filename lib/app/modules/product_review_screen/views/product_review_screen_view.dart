import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_review_screen/views/widgets/rating_indicator.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_review_screen/views/widgets/rating_progress_indicator.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_review_screen/views/widgets/user_review_card.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import '../controllers/product_review_screen_controller.dart';

class ProductReviewScreenView extends GetView<ProductReviewScreenController> {
  const ProductReviewScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: const KamariatiAppBar(
        title: Text("Reviews & Ratings"),
        showBackArrow: true,
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Peringkat dan ulasan diverifikasi dan berasal dari orang-orang yang menggunakan jenis perangkat yang sama dengan yang Anda gunakan.", style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              ),
              verticalSpace(KamariatiSizes.spaceBtwItems),

              // Overall Product Ratings
              const KamariatiOverallProductRating(),
              const KamariatiRatingBarIndicator(rating: 4.5,),
              Text("25.600", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodySmall),),
              verticalSpace(KamariatiSizes.spaceBtwSections),

              // User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}