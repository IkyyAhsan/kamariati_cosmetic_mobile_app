import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/product_review_screen/views/widgets/rating_indicator.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(KamariatiImages.userProfileImage1),),
                horizontalSpaces(KamariatiSizes.spaceBtwItems),
                Text("Arsakha Al Gibran R.", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.titleLarge),)
              ],
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(FluentIcons.more_horizontal_24_regular)
            )
          ],
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const KamariatiRatingBarIndicator(rating: 4),
            horizontalSpaces(KamariatiSizes.spaceBtwItems),
            Text('30 Juli 2024', style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyMedium),)
          ],
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems),
        ReadMoreText(
          "Antarmuka pengguna aplikasi ini cukup intuitif. Saya dapat melakukan navigasi dan pembelian dengan mudah. ​​Sungguh hebat!",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: KamariatiColors.primary)),
          lessStyle: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: KamariatiColors.primary)),
          style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems),

        // Company Review
        KamariatiRoundedContainer(
          backgroundColor: dark ? KamariatiColors.darkerGrey : KamariatiColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(KamariatiSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kamariati Cosmetic", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.titleMedium),),
                    Text("30 Juli 2024", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyLarge),),
                  ],
                ),
                verticalSpace(KamariatiSizes.spaceBtwItems),
                ReadMoreText(
                  "Antarmuka pengguna aplikasi ini cukup intuitif. Saya dapat melakukan navigasi dan pembelian dengan mudah. ​​Sungguh hebat!",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: KamariatiColors.primary)),
                  lessStyle: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: KamariatiColors.primary)),
                  style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                ),
              ],
            ),
          ),
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems),
      ],
    );
  }
}