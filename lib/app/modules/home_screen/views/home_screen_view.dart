import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/all_product_screen/views/all_product_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/modules/bottom_navigation_screen/controllers/bottom_navigation_screen_controller.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/controllers/widgets/banner_controller.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/curved_edges/primary_header_container.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/home_category.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/layout/grid_layout.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/product_cards/product_card_vertical.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/promo_slider.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/searchbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';
import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  final bannerController = Get.put(BannerController());
  HomeScreenView({
    super.key,
    });
  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            KamariatiPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  KamariatiAppBar(
                    showBackArrow: false,
                    title: SizedBox(
                      child: Text(
                        KamariatiTexts.homeAppbarTitle, 
                        style: GoogleFonts.plusJakartaSans(
                          textStyle: const TextStyle(
                            color: KamariatiColors.light,
                            fontSize: 20, 
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {
                          final bottomNavigationBarController = Get.put(BottomNavigationScreenController());
                          bottomNavigationBarController.selectedIndex.value = 2;
                        },
                        icon: const Icon(
                          FluentIcons.cart_24_regular,
                          color: KamariatiColors.light,
                          size: 30,
                        ),
                      ),
                    ],
                  ),

                  // Search Bar
                  const KamariatiSearchBar(text: KamariatiTexts.homeSearchTitle, icon: FluentIcons.search_24_regular,),
                  verticalSpace(KamariatiSizes.spaceBtwSections),
                ],
              ),
            ),

            // Promo Slider
            KamariatiPromoSlider(bannerController: bannerController),
            verticalSpace(KamariatiSizes.defaultSpace),

            // Divider
            Divider(
              color: dark ? KamariatiColors.dark : KamariatiColors.blankDividerBackground,
              thickness: 10,
            ),
        
            // Categories Screen
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: KamariatiSizes.defaultSpace),
              child: Column(
                children: [
                  // Heading
                  KamariatiSectionHeading(title: KamariatiTexts.popularCategory, onPressed: () {},),

                  // Categories
                  const KamariatiHomeCategory()
                ],
              ),
            ),

            // Divider
            Divider(
              color: dark ? KamariatiColors.dark : KamariatiColors.blankDividerBackground,
              thickness: 10,
            ),
            
            // Trending Product
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: KamariatiSizes.defaultSpace),
              child: Column(
                children: [
                  KamariatiSectionHeading(title: KamariatiTexts.trendingProduct, showActionButton: true, onPressed: () => Get.to(() => const AllProductScreenView()),),
                  verticalSpace(KamariatiSizes.inputFieldRadius),
                  KamariatiGridLayout(itemCount: 4, itemBuilder: (_, index) => const KamariatiProductCartVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



