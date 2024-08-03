import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KamariatiAppBar(showBackArrow: true, title: Text('Tambah alamat baru', style: GoogleFonts.plusJakartaSans(fontSize: 18, fontWeight: FontWeight.bold),),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      FluentIcons.person_20_regular,
                    ),
                    labelText: "Nama",
                    labelStyle: GoogleFonts.plusJakartaSans(
                      textStyle: const TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
                verticalSpace(KamariatiSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      FluentIcons.phone_20_regular,
                    ),
                    labelText: "Nomor Telepon",
                    labelStyle: GoogleFonts.plusJakartaSans(
                      textStyle: const TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
                verticalSpace(KamariatiSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            FluentIcons.building_20_regular,
                          ),
                          labelText: "Jalan",
                          labelStyle: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                    ),
                    horizontalSpaces(KamariatiSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            FluentIcons.code_20_regular,
                          ),
                          labelText: "Kode Pos",
                          labelStyle: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(KamariatiSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            FluentIcons.building_bank_20_regular,
                          ),
                          labelText: "Kota",
                          labelStyle: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                    ),
                    horizontalSpaces(KamariatiSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            FluentIcons.map_20_regular,
                          ),
                          labelText: "Provinsi",
                          labelStyle: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(KamariatiSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      FluentIcons.globe_location_20_regular,
                    ),
                    labelText: "Negara",
                    labelStyle: GoogleFonts.plusJakartaSans(
                        textStyle: const TextStyle(
                          fontSize: 14, 
                          fontWeight: FontWeight.w400
                        ),
                      ),
                  ),
                ),
                verticalSpace(KamariatiSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){}, 
                    child: Text('Simpan', style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}