import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

class KamariatiBillingAmountSection extends StatelessWidget {
  const KamariatiBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal untuk produk", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyMedium),
            ),
            Text(
              "Rp64.000", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems / 2),

        // Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal pengiriman", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyMedium),
            ),
            Text(
              "Rp3.000", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.labelLarge),
            ),
          ],
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems / 2),

        // Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Biaya layanan", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyMedium),
            ),
            Text(
              "Rp3.000", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.labelLarge),
            ),
          ],
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems / 2),

        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Pembayaran", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.bodyMedium),
            ),
            Text(
              "Rp70.000", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.titleMedium),
            ),
          ],
        ),
        verticalSpace(KamariatiSizes.spaceBtwItems / 2),
      ],
    );
  }
}