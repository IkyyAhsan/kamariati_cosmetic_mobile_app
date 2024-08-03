import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/all_brand_screen/views/all_brand_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/modules/bottom_navigation_screen/controllers/bottom_navigation_screen_controller.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/controllers/store_screen_controller.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/widgets/brand_card.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/layout/grid_layout.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/searchbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/widgets/category_tab.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/custom_tabbar.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class StoreScreenView extends GetView<StoreScreenController> {
  const StoreScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: KamariatiAppBar(
          title: Text(
            KamariatiTexts.bottomNavbarStore, 
            style: GoogleFonts.plusJakartaSans(
              textStyle: Theme.of(context).textTheme.headlineMedium
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                 final bottomNavigationBarController = Get.put(BottomNavigationScreenController());
                 bottomNavigationBarController.selectedIndex.value = 2;
              },
              icon: const Icon(FluentIcons.cart_24_regular), 
              iconSize: 30
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
                      KamariatiSectionHeading(title: KamariatiTexts.brandUnggulantitle, onPressed: () => Get.to(const AllBrandScreenView())),
                      verticalSpace(KamariatiSizes.spaceBtwItems / 1.5),
      
                      KamariatiGridLayout(itemCount: 4,mainAxisExtent: 80,  itemBuilder: (_, index){
                        return const KamariatiBrandCard(showBorder: true,);
                      })
      
                    ],
                  ),
                ),
                bottom: const KamariatiTabBar(
                  tabs: [
                    Tab(child: Text("Skincare")),
                    Tab(child: Text("Concealer")),
                    Tab(child: Text("Face")),
                    Tab(child: Text("Nail Polish")),
                    Tab(child: Text("Shampoo")),
                    Tab(child: Text("Serum")),
                  ]
                 )
              ),
            ];
          },
          body: const TabBarView(
            children: [
              KamariatiCategoryTab(),
              KamariatiCategoryTab(),
              KamariatiCategoryTab(),
              KamariatiCategoryTab(),
              KamariatiCategoryTab(),
              KamariatiCategoryTab(),
            ],
          )
        ),
      ),
    );
  }
}

