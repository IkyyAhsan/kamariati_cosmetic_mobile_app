import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiSearchBar extends StatelessWidget {
  const KamariatiSearchBar({
    super.key, 
    required this.text, 
    this.icon = FluentIcons.search_24_regular, 
    this.onTap, 
    this.showBackground = true, 
    this.padding = const EdgeInsets.symmetric(horizontal: KamariatiSizes.defaultSpace),
    
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBackground;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KamariatiSizes.defaultSpace),
        child: SearchBar(
          backgroundColor: showBackground ?  
          WidgetStatePropertyAll(dark 
              ? KamariatiColors.darkerGrey 
              : KamariatiColors.searchBarBackground
          )
          : const WidgetStatePropertyAll(Colors.transparent),
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Icon(
              icon, color: dark ? KamariatiColors.grey : KamariatiColors.darkGrey,
            ),
          ),
          hintText: text,
          hintStyle: WidgetStatePropertyAll(
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
        
              color: dark ? KamariatiColors.grey : KamariatiColors.darkGrey,
            ),
          ),
          textStyle: const WidgetStatePropertyAll(
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )
          ),
        ),
      ),
    );
  }
}
