import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/category_screen/views/widgets/circular_image.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/brand_title_text_with_verification_icon.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/layout/grid_layout.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/searchbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/enums.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';
import '../controllers/category_screen_controller.dart';

class StoreScreenView extends GetView<CategoryScreenController> {
  const StoreScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: KamariatiAppBar(
        title: Text(
          KamariatiTexts.bottomNavbarStore, 
          style: GoogleFonts.plusJakartaSans(
            textStyle: Theme.of(context).textTheme.headlineMedium
          ),
        ),
        actions: const [
          Icon(
            FluentIcons.cart_24_regular,
            size: 30,
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? KamariatiColors.black : KamariatiColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // Search Bar
                    verticalSpace(KamariatiSizes.spaceBtwItems),
                    const KamariatiSearchBar(text: KamariatiTexts.homeSearchTitle, padding: EdgeInsets.zero,),
                    verticalSpace(KamariatiSizes.spaceBtwSections),

                    // Feature Brand
                    KamariatiSectionHeading(title: KamariatiTexts.brandUnggulantitle, onPressed: (){}),
                    verticalSpace(KamariatiSizes.spaceBtwItems / 1.5),

                    KamariatiGridLayout(itemCount: 4,mainAxisExtent: 80,  itemBuilder: (_, index){
                      return GestureDetector(
                      onTap: (){},
                      child: KamariatiRoundedContainer(
                        padding: const EdgeInsets.all(KamariatiSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            // Icon
                            const KamariatiCircularImage(
                              isNetworkImage: false,
                              image: KamariatiImages.wardahlogo,
                              backgroundColor: Colors.transparent,
                            ),
                            horizontalSpaces(KamariatiSizes.spaceBtwItems / 2),
                            // Text
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const KamariatiBrandTitleWithVerificationIcon(title: KamariatiTexts.wardahBrand, brandTextSizes: TextSizes.large,),
                                Text(
                                  KamariatiTexts.totalProduk,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.plusJakartaSans(
                                    textStyle: Theme.of(context).textTheme.labelMedium
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                    })

                  ],
                ),
              ),
            )
          ];
        },
        body: Container()
      ),
    );
  }
}


