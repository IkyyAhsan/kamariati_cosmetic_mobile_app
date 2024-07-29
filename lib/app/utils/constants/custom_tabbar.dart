import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/device/device_utility.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiTabBar extends StatelessWidget implements PreferredSizeWidget{
  const KamariatiTabBar({
    super.key, 
    required this.tabs,
    });

    final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? KamariatiColors.black : KamariatiColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: KamariatiColors.primary,
        labelColor: dark ? KamariatiColors.white : KamariatiColors.primary,
        unselectedLabelColor: KamariatiColors.darkGrey,
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(KamariatiDeviceUtils.getAppBarHeight());
}