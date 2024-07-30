import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/curved_edges/primary_header_container.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/modules/profile_screen/views/widgets/full_profile.dart';
import 'package:kamariati_cosmetic_project/app/modules/profile_screen/views/widgets/setting_menu_tile.dart';
import 'package:kamariati_cosmetic_project/app/modules/profile_screen/views/widgets/user_profile_tile.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  const ProfileScreenView({super.key});
  @override
  Widget build(BuildContext context) {
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
                    title: Text(
                      KamariatiTexts.profileAccountTitle, 
                      style: GoogleFonts.plusJakartaSans(
                        textStyle: Theme.of(context).textTheme.headlineMedium!.apply(
                          color: KamariatiColors.light
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(KamariatiSizes.spaceBtwSections),

                  // User Profile Card
                  KamariatiUserProfileTile(
                    onPressed: () => Get.to(() => const FullProfileScreen()),
                  ),
                  verticalSpace(KamariatiSizes.spaceBtwSections),

                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Setting
                  const KamariatiSectionHeading(title: KamariatiTexts.profileAccountSetting, showActionButton: false,),
                  verticalSpace(KamariatiSizes.spaceBtwItems),

                  // Alamat Saya
                  KamariatiSettingMenuTile(
                    icon: FluentIcons.location_24_regular, 
                    title: KamariatiTexts.profileMyAddressTitle, 
                    subtitle: KamariatiTexts.profileMyAddressSubtitle,
                    onTap: (){},
                  ),

                  // Keranjang Saya
                  KamariatiSettingMenuTile(
                    icon: FluentIcons.cart_24_regular, 
                    title: KamariatiTexts.profileMyCartTitle, 
                    subtitle: KamariatiTexts.profileMyCartSubtitle,
                    onTap: (){},
                  ),

                  // Pesanan Saya
                  KamariatiSettingMenuTile(
                    icon: FluentIcons.receipt_24_regular, 
                    title: KamariatiTexts.profileMyOrdersTitle, 
                    subtitle: KamariatiTexts.profileMyOrdersSubtitle,
                    onTap: (){},
                  ),

                  // Kupon Saya
                  KamariatiSettingMenuTile(
                    icon: FluentIcons.tag_24_regular, 
                    title: KamariatiTexts.profileMyCouponsTitle, 
                    subtitle: KamariatiTexts.profileMyCouponsSubtitle,
                    onTap: (){},
                  ),

                  // Notifikasi
                  KamariatiSettingMenuTile(
                    icon: FluentIcons.alert_24_regular, 
                    title: KamariatiTexts.profileNotificationTitle, 
                    subtitle: KamariatiTexts.profileNotificationSubtitle,
                    onTap: (){},
                  ),


                  // App Settings
                  verticalSpace(KamariatiSizes.spaceBtwSections),
                  const KamariatiSectionHeading(
                    title: KamariatiTexts.profileInformation, 
                    showActionButton: false,
                  ),
                  verticalSpace(KamariatiSizes.defaultSpace),

                  // Hubungi Kami
                  KamariatiSettingMenuTile(
                    icon: FluentIcons.people_24_regular, 
                    title: KamariatiTexts.profileWereContactTitle, 
                    subtitle: KamariatiTexts.profileWereContactSubtitle,
                    onTap: (){},
                  ),

                  // Tentang Kami
                  KamariatiSettingMenuTile(
                    icon: FluentIcons.info_24_regular, 
                    title: KamariatiTexts.profileAboutUsTitle, 
                    subtitle: KamariatiTexts.profileAboutUsSubtitle,
                    onTap: (){},
                  ),

                  verticalSpace(KamariatiSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text(KamariatiTexts.profileLogout)),
                  ),
                  verticalSpace(KamariatiSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}