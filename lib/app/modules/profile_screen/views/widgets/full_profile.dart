import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/section_heading.dart';
import 'package:kamariati_cosmetic_project/app/modules/profile_screen/views/widgets/profile_menu.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/widgets/circular_image.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class FullProfileScreen extends StatelessWidget {
  const FullProfileScreen({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KamariatiAppBar(
        showBackArrow: true,
        title: Text("Profil Akun", style: GoogleFonts.plusJakartaSans(
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
          child: Column(
            children: [
              // Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const KamariatiCircularImage(image: KamariatiImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text("Ganti Foto Profil"))
                  ],
                ),
              ),

              // Details
              verticalSpace(KamariatiSizes.spaceBtwItems / 2),
              const Divider(),
              verticalSpace(KamariatiSizes.spaceBtwItems),

              // Heading Profile Info
              const KamariatiSectionHeading(title: "Informasi Profil", showActionButton: false,),
              verticalSpace(KamariatiSizes.spaceBtwItems),

              KamariatiProfileMenu(title: "Nama Lengkap", value: KamariatiTexts.profileSuciAqilaName, onPressed: (){},),
              KamariatiProfileMenu(title: "Nama Panggilan", value: "Kilaaa_", onPressed: (){},),

              verticalSpace(KamariatiSizes.spaceBtwItems),
              const Divider(),
              verticalSpace(KamariatiSizes.spaceBtwItems),

              // Heading Personal Info
              const KamariatiSectionHeading(title: "Personal Information", showActionButton: false,),
              verticalSpace(KamariatiSizes.spaceBtwItems),

              KamariatiProfileMenu(onPressed: (){}, title: "Email", value: KamariatiTexts.profileSuciAqilaEmail),
              KamariatiProfileMenu(onPressed: (){}, title: "Nomor Telepon", value: "081354637146"),
              KamariatiProfileMenu(onPressed: (){}, title: "Jenis Kelamin", value: "Perempuan"),
              KamariatiProfileMenu(onPressed: (){}, title: "Tanggal Lahir", value: "16 Juni 2003"),
              const Divider(),
              verticalSpace(KamariatiSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){}, 
                  child: Text("Hapus Akun", style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 14, color: Colors.red)),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}