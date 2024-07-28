import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const KamariatiAppBarWidget({
    super.key, 
    this.title = '', 
    this.showLeading = false, 
    required this.onPressed,
  });

  final String title;
  final bool showLeading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return AppBar(
      automaticallyImplyLeading: false,
      leading: showLeading ? IconButton(
        onPressed: onPressed,
        icon: const Icon(FluentIcons.arrow_left_20_filled,), 
        color: dark ? KamariatiColors.light : KamariatiColors.primary,
      ) : null,
      title: Text(
        title,
        style: GoogleFonts.plusJakartaSans(
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
          )
        ),
      ),
      backgroundColor: dark ? KamariatiColors.primary : KamariatiColors.light,
      centerTitle: true,
      elevation: 1.0,
      shadowColor: dark ? KamariatiColors.dark : KamariatiColors.dark,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}