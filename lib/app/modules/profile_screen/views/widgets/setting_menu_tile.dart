import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiSettingMenuTile extends StatelessWidget {
  const KamariatiSettingMenuTile({
    super.key, 
    required this.icon, 
    required this.title, 
    required this.subtitle, 
    this.trailing, 
    this.onTap, 
    this.profileIcon = false,
    });

    final IconData icon;
    final String title, subtitle;
    final Widget? trailing;
    final VoidCallback? onTap;
    final bool profileIcon;

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return ListTile(
      leading: Icon(icon, size: 28, color: dark ? profileIcon ? KamariatiColors.accent : null : KamariatiColors.primary,),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium,),
      trailing: trailing,
      onTap: onTap,
    );
  }
}