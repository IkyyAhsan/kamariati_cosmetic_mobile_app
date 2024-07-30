import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';

class KamariatiProfileMenu extends StatelessWidget {
  const KamariatiProfileMenu({
    super.key, 
    this.icon = FluentIcons.ios_arrow_rtl_24_regular, 
    required this.onPressed, 
    required this.title, 
    required this.value,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: KamariatiSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(flex: 3, child: Text(title, style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodySmall!.apply(overflow: TextOverflow.ellipsis)),)),
            Expanded(flex: 5, child: Text(value, style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyMedium!.apply(overflow: TextOverflow.ellipsis)),)),
            Expanded(child: Icon(icon, size: 18,))
          ],
        ),
      ),
    );
  }
}