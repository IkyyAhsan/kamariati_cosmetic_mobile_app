import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/layout/grid_layout.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/product_cards/product_card_vertical.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

class KamariatiSortableProducts extends StatelessWidget {
  const KamariatiSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(FluentIcons.text_sort_ascending_20_regular)
          ),
          onChanged: (value) {},
          items: [
            'Lokasi',
            'Tipe Penjual',
            'Metode Pembayaran',
            'Opsi Pengiriman',
            'Program Promo',
            'Penilaian',
            'Brand',
            'Berdasarkan Kategori',
          ].map((option) {
            return DropdownMenuItem(
              value: option,
              child: Text(option));
          }).toList()
        ),
        verticalSpace(KamariatiSizes.spaceBtwSections),
        KamariatiGridLayout(
          itemCount: 10, 
          itemBuilder: (_, index) => const KamariatiProductCartVertical()
        ),
      ],
    );
  }
}