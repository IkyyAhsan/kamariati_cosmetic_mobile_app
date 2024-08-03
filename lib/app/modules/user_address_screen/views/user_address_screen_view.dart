import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/appbar.dart';
import 'package:kamariati_cosmetic_project/app/modules/user_address_screen/views/widgets/add_new_address.dart';
import 'package:kamariati_cosmetic_project/app/modules/user_address_screen/views/widgets/single_address.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';

import '../controllers/user_address_screen_controller.dart';

class UserAddressScreenView extends GetView<UserAddressScreenController> {
  const UserAddressScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: KamariatiColors.primary,
        child: const Icon(FluentIcons.add_24_regular, color: KamariatiColors.white,),
      ),
      appBar: KamariatiAppBar(
        showBackArrow: true,
        title: Text(
          "Addresses", style: GoogleFonts.plusJakartaSans(textStyle: Theme.of(context).textTheme.headlineSmall),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KamariatiSizes.defaultSpace),
          child: Column(
            children: [
              KamariatiSingleAddress(selectedAddress: true),
              KamariatiSingleAddress(selectedAddress: false),
            ],
          ),
          ),
      ),
    );
  }
}
