import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/device/device_utility.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KamariatiAppBar({
    super.key, 
    this.title, 
    this.showBackArrow = false, 
    this.leadingIcon, 
    this.actions, 
    this.leadingOnPressed,
    });

    final Widget? title;
    final bool showBackArrow;
    final IconData? leadingIcon;
    final List<Widget>? actions;
    final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KamariatiSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow 
          ? IconButton(onPressed: () => Get.back(), icon: Icon(FluentIcons.arrow_left_20_regular,
            color: dark ? KamariatiColors.light : KamariatiColors.dark,
          )) 
          : leadingIcon != null 
              ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
              : null,
        title: title,
        actions: actions,
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(KamariatiDeviceUtils.getAppBarHeight());
}