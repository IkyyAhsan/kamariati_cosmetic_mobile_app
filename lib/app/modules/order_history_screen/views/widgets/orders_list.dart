import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/rounded_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiOrderListItems extends StatelessWidget {
  const KamariatiOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: KamariatiSizes.spaceBtwItems,),
      itemBuilder: (_, index) => KamariatiRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(KamariatiSizes.md),
        backgroundColor: dark ? KamariatiColors.dark : KamariatiColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
                // 1 - Icon
                const Icon(FluentIcons.cube_sync_20_regular),
                horizontalSpaces(KamariatiSizes.spaceBtwItems / 2),
      
                // 2 - Status & Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Processing",
                        style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyLarge!.apply(color: KamariatiColors.accent, fontWeightDelta: 1)),
                      ),
                      Text(
                        "1 Agustus 2024",
                        style: GoogleFonts.plusJakartaSans(
                          textStyle: Theme.of(context).textTheme.headlineSmall
                        ),
                      ),
                    ],
                  ),
                ),
      
                // 3 - Icon
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(
                    FluentIcons.arrow_right_20_regular,
                    size: KamariatiSizes.iconMd,
                  )
                )
              ],
            ),
            verticalSpace(KamariatiSizes.spaceBtwItems),
      
            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1 - Icon
                      const Icon(FluentIcons.tag_20_regular),
                      horizontalSpaces(KamariatiSizes.spaceBtwItems / 2),
                  
                      // 2 - Status & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Order",
                              style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.labelMedium,)
                            ),
                            Text(
                              "[#124RS]",
                              style: GoogleFonts.plusJakartaSans(
                                textStyle: Theme.of(context).textTheme.titleMedium
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      // 1 - Icon
                      const Icon(FluentIcons.calendar_20_regular),
                      horizontalSpaces(KamariatiSizes.spaceBtwItems / 2),
                  
                      // 2 - Status & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Tanggal Pengiriman",
                              style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.labelMedium,)
                            ),
                            Text(
                              "2 Agustus 2024",
                              style: GoogleFonts.plusJakartaSans(
                                textStyle: Theme.of(context).textTheme.titleMedium
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}