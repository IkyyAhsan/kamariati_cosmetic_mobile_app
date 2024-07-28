import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/register_screen/views/register_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiRegisterButton extends StatelessWidget {
  const KamariatiRegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          KamariatiTexts.dontHaveAnAccount, 
          style: GoogleFonts.plusJakartaSans(
            textStyle: const TextStyle(
              fontSize: 15, 
              fontWeight: FontWeight.w600)
          ),
        ),
        TextButton(onPressed: () => Get.to(() => const RegisterScreenView()), child: Text(KamariatiTexts.registerText, style: GoogleFonts.plusJakartaSans(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: KamariatiColors.textPurple),)))
      ],
    );
  }
}