import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';
import '../controllers/bottom_navigation_screen_controller.dart';

class BottomNavigationScreenView extends GetView<BottomNavigationScreenController> {
  const BottomNavigationScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavigationScreenController());
    final darkMode = KamariatiHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () =>  NavigationBar(
          indicatorColor: darkMode ? KamariatiColors.black : KamariatiColors.white,
          indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          height: 70,
          elevation: 0,
          backgroundColor: darkMode ? KamariatiColors.black : KamariatiColors.white,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(FluentIcons.home_20_regular), label: KamariatiTexts.bottomNavbarBeranda, selectedIcon: Icon(FluentIcons.home_20_filled),),
            NavigationDestination(icon: Icon(FluentIcons.box_20_regular), label: KamariatiTexts.bottomNavbarStore, selectedIcon: Icon(FluentIcons.box_20_filled),),
            NavigationDestination(icon: Icon(FluentIcons.cart_20_regular), label: KamariatiTexts.bottomNavbarKeranjang, selectedIcon: Icon(FluentIcons.cart_20_filled),),
            NavigationDestination(icon: Icon(FluentIcons.person_20_regular), label: KamariatiTexts.bottomNavbarProfile, selectedIcon: Icon(FluentIcons.person_20_filled),),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value])
    );
  }
}
